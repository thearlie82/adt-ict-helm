{{/*
Expand the name of the chart.
*/}}
{{- define "adt-ict.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "adt-ict.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "adt-ict.labels" -}}
helm.sh/chart: {{ include "adt-ict.name" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: adt-ict
{{- end }}

{{/*
Image pull secrets
*/}}
{{- define "adt-ict.imagePullSecrets" -}}
{{- range .Values.global.imagePullSecrets }}
- name: {{ .name }}
{{- end }}
{{- end }}
