{{ define "title_failure" -}}
✅ Backup execution failure
{{- end }}

{{ define "body_failure" -}}
:file_cabinet: File name: {{ .Stats.BackupFile.Name }}
▶️ Start time: {{ .Stats.StartTime | formatTime }}
⏹️ End time: {{ .Stats.EndTime | formatTime }}
⌛ Took time: {{ .Stats.TookTime }}
⚖️ Backup size: {{ .Stats.BackupFile.Size | formatBytesBin }} / {{ .Stats.BackupFile.Size | formatBytesDec }}
🗑️ Pruned backups: {{ .Stats.Storages.Local.Pruned }}/{{ .Stats.Storages.Local.Total }} ({{ .Stats.Storages.Local.PruneErrors }} errors)
:clipboard: Log output:  {{ .Stats.LogOutput }}
{{- end }}