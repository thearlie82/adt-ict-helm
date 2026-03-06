{{- define "redis.fullname" -}}
adt-ict-redis
{{- end }}

{{- define "redis.labels" -}}
helm.sh/chart: redis
app.kubernetes.io/name: redis
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: adt-ict
app.kubernetes.io/component: redis
{{- end }}

{{- define "redis.selectorLabels" -}}
app.kubernetes.io/name: redis
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
