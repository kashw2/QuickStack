# Active Directory B2C

Setting up Azure Active Directory B2C for our needs requires manual interaction as neither the `azurerm` or `azuread`
Terraform providers currently support anything other than creating an instance of AAD B2C and Applications inside it.

In order to facilitate secure managed logins in our client we require three things from Azure:

1) Active Directory B2C (AAD B2C)*
2) Application (App Registration)*
3) User flows

Currently, only the above marked with an * are supported via the two Terraform providers. To create a user flow,
after following the above ordering of creation, you must:

1) Enter the new tenant / b2c directory
2) Open Azure AD B2C
3) Navigate to User flows
4) Create a new user flow with the requirements of your user flow

The only requirement above is that during the creation of the user flow, we must enable a return claim for a user's
object id. This will enable us to use cosmos for storage of extra user credentials later on as AAD B2C does not
currently support Roles and Groups.

[Documentation](https://docs.microsoft.com/en-us/azure/active-directory-b2c/)