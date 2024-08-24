{{- define "opti.env.redis" -}}
- name: {{ .Values.env.redisUrl }}
  value: redis://{{ .Release.Name }}-redis-master:6379
{{- end }}

{{- define "opti.env.postgresql" -}}
- name: {{ .Values.env.postgresHost }}
  value: {{ .Release.Name }}-postgresql
- name: {{ .Values.env.postgresPass }}
  value: {{ .Values.postgresql.auth.postgresPassword }}
{{- end }}

{{- define "opti.env.googleClientId" -}}
- name: {{ .Values.env.googleClientIdKey }}
  value: {{ .Values.env.googleClientIdValue }}
{{- end }}

{{- define "opti.env.googleClientIdVite" -}}
- name: VITE_{{ .Values.env.googleClientIdKey }}
  value: {{ .Values.env.googleClientIdValue }}
{{- end }}

{{- define "opti.env.secretKey" -}}
- name: {{ .Values.env.secretKey }}
  value: {{ .Values.env.secretValue }}
{{- end }}

{{- define "opti.env.release" -}}
- name: {{ .Values.env.releaseKey }}
  value: {{ .Values.env.releaseValue }}
{{- end }}