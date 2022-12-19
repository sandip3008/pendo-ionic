export interface pendoPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
}
