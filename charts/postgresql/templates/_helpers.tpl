{{- define "postgresql.fullname" -}}
adt-ict-postgresql
{{- end }}

{{- define "postgresql.labels" -}}
helm.sh/chart: postgresql
app.kubernetes.io/name: postgresql
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: adt-ict
app.kubernetes.io/component: postgresql
{{- end }}

{{- define "postgresql.selectorLabels" -}}
app.kubernetes.io/name: postgresql
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
