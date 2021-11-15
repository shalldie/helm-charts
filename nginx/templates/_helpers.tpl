{{/*
Selector labels
*/}}
{{- define "nginx.selectorLabels" -}}
app.kubernetes.io/name: {{ .Values.meta.name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}