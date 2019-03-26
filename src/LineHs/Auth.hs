import LineApi.Line_Types
import Datas
type token string

loginToClientWithQRCode :: token -> Either a b
loginToClientWithQRCode = do
    let sysName = "LineHs"
