{
  // new returns an instance of Validatingwebhookconfiguration
  new(name): {
    apiVersion: 'admissionregistration.k8s.io/v1beta1',
    kind: 'ValidatingWebhookConfiguration'
  } + self.metadata.withName(name=name),
  withMetadata(metadata): { metadata: metadata },
  withWebhooks(webhooks): { webhooks: if std.isArray(v=webhooks) then webhooks else [webhooks] },
  withWebhooksMixin(webhooks): { webhooks+: if std.isArray(v=webhooks) then webhooks else [webhooks] },
  mixin: self
}