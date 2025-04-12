export interface CapacitorAppsUptimeControlPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
