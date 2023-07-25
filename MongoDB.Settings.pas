unit MongoDB.Settings;

interface

const

  {

    DOCUMENTATION: MongoDB.Settings
    written on 2023/05/09 @ 21:55PM

    This is a single use module to store settings relating to the backend
    database used within this project and will serve no other purpose. It
    is also considered top-level since it can be modified.

  }

  SERVER_ADDRESS = 'localhost';
  SERVER_PORT = '27017';
  AUTH_USERNAME = 'user';
  AUTH_PASSWORD = 'password';
  CONTROL_DATABASE = 'admin';
  USE_AUTH = True;

implementation

end.
