{{- define "worker.fullname" -}}
adt-ict-worker
{{- end }}

{{- define "worker.labels" -}}
helm.sh/chart: worker
app.kubernetes.io/name: worker
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: adt-ict
app.kubernetes.io/component: worker
{{- end }}

{{- define "worker.selectorLabels" -}}
app.kubernetes.io/name: worker
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
