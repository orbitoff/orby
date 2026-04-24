export WEBUI_NAME="Orby"
export CORS_ALLOW_ORIGIN="http://localhost:5173;http://localhost:8080;https://chat.orbitoff.com"
export FORWARDED_ALLOW_IPS="127.0.0.1"
export PORT="1409"

uvicorn open_webui.main:app --port $PORT --host 0.0.0.0 --forwarded-allow-ips "${FORWARDED_ALLOW_IPS:-*}" --reload
