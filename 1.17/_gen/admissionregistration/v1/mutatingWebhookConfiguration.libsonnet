{
  // new returns an instance of Mutatingwebhookconfiguration
  new(name): {
    apiVersion: 'admissionregistration.k8s.io/v1',
    kind: 'MutatingWebhookConfiguration'
  } + self.metadata.withName(name=name),
  // ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
  metadata: {
    withAnnotations(annotations): { metadata+: { annotations: annotations } },
    withAnnotationsMixin(annotations): { metadata+: { annotations+: annotations } },
    withClusterName(clusterName): { metadata+: { clusterName: clusterName } },
    withCreationTimestamp(creationTimestamp): { metadata+: { creationTimestamp: creationTimestamp } },
    withDeletionGracePeriodSeconds(deletionGracePeriodSeconds): { metadata+: { deletionGracePeriodSeconds: deletionGracePeriodSeconds } },
    withDeletionTimestamp(deletionTimestamp): { metadata+: { deletionTimestamp: deletionTimestamp } },
    withFinalizers(finalizers): { metadata+: { finalizers: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withFinalizersMixin(finalizers): { metadata+: { finalizers+: if std.isArray(v=finalizers) then finalizers else [finalizers] } },
    withGenerateName(generateName): { metadata+: { generateName: generateName } },
    withGeneration(generation): { metadata+: { generation: generation } },
    withLabels(labels): { metadata+: { labels: labels } },
    withLabelsMixin(labels): { metadata+: { labels+: labels } },
    withManagedFields(managedFields): { metadata+: { managedFields: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withManagedFieldsMixin(managedFields): { metadata+: { managedFields+: if std.isArray(v=managedFields) then managedFields else [managedFields] } },
    withName(name): { metadata+: { name: name } },
    withNamespace(namespace): { metadata+: { namespace: namespace } },
    withOwnerReferences(ownerReferences): { metadata+: { ownerReferences: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withOwnerReferencesMixin(ownerReferences): { metadata+: { ownerReferences+: if std.isArray(v=ownerReferences) then ownerReferences else [ownerReferences] } },
    withResourceVersion(resourceVersion): { metadata+: { resourceVersion: resourceVersion } },
    withSelfLink(selfLink): { metadata+: { selfLink: selfLink } },
    withUid(uid): { metadata+: { uid: uid } }
  },
  withWebhooks(webhooks): { webhooks: if std.isArray(v=webhooks) then webhooks else [webhooks] },
  withWebhooksMixin(webhooks): { webhooks+: if std.isArray(v=webhooks) then webhooks else [webhooks] },
  mixin: self
}