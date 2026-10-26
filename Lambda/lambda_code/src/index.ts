export const handler = async (
    event: any
): Promise<any> => {
    const message = "hello world";
    console.log(`returning ${message}`);
    return {
        StatusCode: 200,
        body: JSON.stringify(message)
    }
}