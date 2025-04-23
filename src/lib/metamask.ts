// src/lib/metamask.ts
import { ethers } from 'ethers';

declare global {
  interface Window { ethereum: ethers.providers.ExternalProvider; }
}

const polygonProvider = new ethers.providers.JsonRpcProvider('https://polygon-rpc.com/');

export function getProvider(): ethers.providers.Web3Provider | null {
    if (window.ethereum) {
        return new ethers.providers.Web3Provider(window.ethereum);
    } else {
        console.warn("Please install MetaMask!");
        return null;
    }
}

export async function connectWallet(): Promise<string> {
    const provider = getProvider();
    if (provider) {
        try {
            await provider.send("eth_requestAccounts", []);
            const signer = provider.getSigner();
            const address = await signer.getAddress();
            saveToLocalStorage(address);
            return address;
        } catch (error) {
            console.error("Failed to connect to MetaMask", error);
            throw new Error("Failed to connect to MetaMask");
        }
    } else {
        throw new Error("MetaMask is not available");
    }
}

export async function getTokenBalance(walletAddress: string, tokenAddress: string): Promise<string> {
    const tokenContract = new ethers.Contract(
        tokenAddress,
        ["function balanceOf(address) view returns (uint)"],
        polygonProvider
    );

    try {
        const balance = await tokenContract.balanceOf(walletAddress);
        return ethers.utils.formatUnits(balance, 18); // Assuming token has 18 decimal places
    } catch (error) {
        console.error("Failed to get token balance", error);
        throw new Error("Failed to get token balance");
    }
}

export function disconnectWallet(): void {
    // Clearing the local state to simulate disconnection
    clearFromLocalStorage();
}

// Local Storage Functions
function saveToLocalStorage(address: string): void {
  localStorage.setItem('connectedWalletAddress', address);
}

function clearFromLocalStorage(): void {
  localStorage.removeItem('connectedWalletAddress');
}

export function getFromLocalStorage(): string | null {
  return localStorage.getItem('connectedWalletAddress');
}

export async function saveWallet(address: string): Promise<void> {
  const response = await fetch('https://etf-ai.com/api/wallet', {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json'
      },
      body: JSON.stringify({
          address: address,
          currency: 'ETH',
          chain: 'Ethereum'
      })
  });

  if (response.ok) {
      console.log('Wallet saved or already exists.');
  } else if (response.status === 409) {
      console.log('Wallet already exists.');
  } else {
      console.error('Failed to save the wallet.', await response.json());
  }
}
