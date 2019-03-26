import LineApi.Line_Types

type token string

loginToClientWithQRCode :: token -> Either a b
loginToClientWithQRCode = do
    let sysName = "LineHs"
    let appName = 
