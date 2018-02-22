# processwire-demo

### Requirements

1. Setup git repository.
  * Add remotes (origin, processwire-demo).
  * Publish branches.
  * Protect `master` branch at GitHub.
  * `git fetch --all`
  * `git checkout master`.
  * `git merge processwire-demo/release`.
  * `git push -u origin master`
  * `git checkout -b beta`
2. Change `Vagrantfile` VM name.
  * Use next available IP and update registry.
  * `bootstrap.sh` DB name.
3. Enable travis.
  * `bash <(curl -sL https://git.io/hash-and-encrypt)` Ctrl+D
  * Deploy on `master` and `beta`.
4. Configure the beta environment.
  * Add aditional domain `<project-name>.67.227.237.109.nip.io`.
  * Document root: `public_html/...`.
  * FTP username: `deploy`.
  * Generate a _safe_ FTP password without special characters `@`, `%`, `:`, `/`, etc...
5. Save new [secret](https://github.com/krrrunch/secrets) as `project-<project-name>.txt`.

    ```
    GIT_FTP_URL_beta='ftp://<user>:<pass>@<host>/'
    u: <dbuser> (larealco_u00)
    p: <dbpass>
    d: <dbname> (larealco_db00)
    ```
6. Config repo settings (Teams, Protected branches, Webhooks)
7. Run `travis enable`.
8. Initial deploy.
  * `git ftp add-scope <branch> 'ftp://...'`.
  * `git config git-ftp.syncroot public`.
  * Test connectivity `git ftp log -s <branch> -vv`.
  * Upload files `git ftp init -s <branch> -vv`.
  * Test it `git checkout <branch>`, `git ftp push -s <branch> -vv`
9. Create default GitHub labels ([github-create-labels.sh](https://gist.github.com/memiux/a612fff9975c1cd34e15568708c82668)).

### How to install

1. Run `vagrant up`.
2. Duplicate `public/htaccess.txt` => `public/.htaccess`.
3. Duplicate `public/site/config-sample.php` => `public/site/config.php`.
4. Run installer.
  * DB Host: `localhost` => `127.0.0.1`.
  * Add example.com, **www.**example.com in `$config->httpHosts`.
  * Account Information: `root`, `123456`, `root@localhost.local`.
  * Uncheck all cleanup options.

#### Optionals

* Do the macarena dance :dancer:.

--

#### Additional Modules

* [ProcessExportProfile](http://modules.processwire.com/modules/process-export-profile/)
* [ProcessDatabaseBackups](http://modules.processwire.com/modules/process-database-backups)
* [FormBuilder](https://github.com/krrrunch/secrets/raw/master/ProcessWire-Form-Builder.txt)

---

```php
  <?php
    # Reset password
    $u = $users->get('root');
    $u->setOutputFormatting(false);
    $u->pass = '123456';
    $u->save();
  ?>
```
