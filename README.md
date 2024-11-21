# ticketloop-api

## Run manual

Go to API project:
```bash
cd TicketFlowApi
```
Trust the HTTPS development certificate by running the following command:
```bash
dotnet dev-certs https --trust
```
Run the following command to start the app on the https profile:
```bash
dotnet run --launch-profile https
```
The default browser is launched to `https://localhost:<port>/swagger/index.html`

