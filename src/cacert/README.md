
# cacert

プライベート認証局のCA証明書をインポートします。

## Example Usage

```json
"features": {
    "ghcr.io/oscimages/feature-proxy/cacert:1": {
        "version": "latest",
        "proxy" : "https://proxy.xx.jp:8080",
        "cacert" : "http://cacert.xx.jp/ca.crt",
        "cafile" : "/usr/share/ca-certificates/ca.crt"
    }
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| proxy | https_proxyに、この値が設定されていたらCA証明書をインポートする | string | N/A |
| cacert | インポートするCA証明書のURL | string | N/A |
| cafile | CA証明書のダウンロードファイル名 | string | N/A |
