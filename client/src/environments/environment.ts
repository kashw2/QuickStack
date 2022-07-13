// This file can be replaced during build by using the `fileReplacements` array.
// `ng build` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: false,
  AZURE_CLIENT_ID: "2dd0c53d-5f76-4fcc-8d42-40a58f0783b6",
  AZURE_AUTHORITY_DOMAIN: "quickstackb2c.b2clogin.com",
  AZURE_AUTHORITY: "https://quickstackb2c.b2clogin.com/quickstackb2c.onmicrosoft.com/B2C_1_SIGN_IN_SIGN_UP",
  REDIRECT_URI: "http://localhost:4200/"
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/plugins/zone-error';  // Included with Angular CLI.
