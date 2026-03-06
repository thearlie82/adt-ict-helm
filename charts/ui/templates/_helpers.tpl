{{- define "ui.fullname" -}}
adt-ict-ui
{{- end }}

{{- define "ui.labels" -}}
helm.sh/chart: ui
app.kubernetes.io/name: ui
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: adt-ict
app.kubernetes.io/component: ui
{{- end }}

{{- define "ui.selectorLabels" -}}
app.kubernetes.io/name: ui
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
