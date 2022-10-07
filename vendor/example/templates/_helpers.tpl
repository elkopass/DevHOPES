{{- define "common.labels" -}}
app.kubernetes.io/managed-by: Helm
component: {{ .Chart.Name }}
release: {{ .Release.Name }}
{{- end -}}

{{- define "common.annotations" -}}
meta.helm.sh/release-name: {{ .Release.Name }}
meta.helm.sh/release-namespace: {{ .Release.Namespace }}
{{- end -}}
