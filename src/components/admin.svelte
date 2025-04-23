<script lang="ts">
    let password = '';
    let access = false;
    let code = '';
    let message = '';
    let allKeys: any[] = [];
  
    const ADMIN_PASSWORD = 'SwapFTM777@';
  
    function tryAccess() {
      if (password === ADMIN_PASSWORD) {
        access = true;
        fetchAllKeys();
      }
    }
  
    function generateCode() {
      const random = Math.random().toString(36).substring(2, 8).toUpperCase();
      code = `FTMC-${random}`;
    }
  
    async function saveCode() {
      const res = await fetch('/api/save-key', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code, password: ADMIN_PASSWORD })
      });
  
      if (res.ok) {
        message = `✅ Сохранено: ${code}`;
        fetchAllKeys();
      } else {
        message = '❌ Ошибка при сохранении';
      }
    }
  
    async function fetchAllKeys() {
      const res = await fetch('/api/list-keys');
      if (res.ok) {
        allKeys = await res.json();
      }
    }
  </script>
  
  <style>
    .admin-wrapper {
      display: flex;
      gap: 2rem;
    }
    .column {
      flex: 1;
    }
    .key {
      font-family: monospace;
      padding: 0.25rem 0;
    }
    .used {
      color: gray;
      text-decoration: line-through;
    }
  </style>
  
  {#if access}
    <div class="admin-wrapper">
      <div class="column">
        <h1>🎟️ Генерация ключей доступа</h1>
        <button on:click={generateCode}>🔐 Сгенерировать ключ</button>
        {#if code}
          <p><b>{code}</b></p>
          <button on:click={saveCode}>💾 Сохранить</button>
        {/if}
        {#if message}<p>{message}</p>{/if}
      </div>
      <div class="column">
        <h2>📋 Все ключи</h2>
        {#each allKeys as k}
          <div class="key {k.used_by ? 'used' : ''}">
            {k.code} — {k.used_by ? `использован пользователем ${k.used_by}` : 'свободен'}
          </div>
        {/each}
      </div>
    </div>
  {:else}
    <h2>🔒 Введите пароль:</h2>
    <input bind:value={password} type="password" />
    <button on:click={tryAccess}>Войти</button>
  {/if}
  