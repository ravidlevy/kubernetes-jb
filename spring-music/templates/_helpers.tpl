{{- define "spring.labels" }}
generator: helm
date: {{ now | htmlDate }}
name: {{ .Release.Name }}
{{- end }}

{{- define "spring.name" }}
name: {{ .Release.Name }}-{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end }}

{{- define "spring.type" }}
{{- if eq .Values.global.env "local" }}
type: NodePort
{{- else }}
type: {{ .Values.service.type }}
{{- end }}
{{- end }}