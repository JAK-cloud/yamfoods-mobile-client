/// Central place for Gebeta Maps configuration.
///
/// Note: Ideally secrets should come from env/remote config, but this project
/// already embeds the key in multiple places. Keep it centralized to avoid drift.
class GebetaMapConfig {
  GebetaMapConfig._();

  static const String apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJjb21wYW55bmFtZSI6IlJlamViIiwiZGVzY3JpcHRpb24iOiIwY2MwYWFiZC0wYjlkLTQ1NDYtODY4Mi1hMDc2OGYyZjg1ZjkiLCJpZCI6IjVlMzgwN2FhLTQ2NGUtNGYyOC04Y2RjLTc1Y2M0NWYwZjdiMyIsImlzc3VlZF9hdCI6MTc2NDUzNTIyMSwiaXNzdWVyIjoiaHR0cHM6Ly9tYXBhcGkuZ2ViZXRhLmFwcCIsImp3dF9pZCI6IjAiLCJzY29wZXMiOlsiRkVBVFVSRV9BTEwiXSwidXNlcm5hbWUiOiJkZXYgcmVqZWIifQ.LFcL9jfwHT5Uv3iMpbUZJHiZHXuV3GFDCHRj1NYPBRc';
}

