    { config, pkgs, ... }: {
     
      # Using PAM for database authentication,
      # so creating a system user for that purpose.
      users.users.dbuser = {
        isNormalUser = true;
        description = "dbuser";
        group = "dbuser";
        initialPassword = "db";
      };
      users.groups.dbuser = {};
     
      # Create the database and set up permissions.
      services.mysql.ensureDatabases = [ "mydb" ];
      services.mysql.ensureUsers = [
        {
          name = "dbuser"; # Must be a system user.
          ensurePermissions = { "mydb.*" = "ALL PRIVILEGES"; };
        }
      ];
    }
