export interface pendoPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
  startSession(options: {
    visitorId: string,
    accountId: string,
    visitorData: string,
    accountData: string,
  }): Promise<{
    visitorId: string,
    accountId: string,
    visitorData: string,
    accountData: string,
  }>;
}
