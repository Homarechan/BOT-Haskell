import LinaApi.Line.Types (ApplicaionType)

AppType :: Int -> ApplicationType
AppType n = ApplicationType.toEnum n

AppVersion :: string
AppVersion = "1.0.0"
Carrier