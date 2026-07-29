import CanonicalResiduals

/-!
# Endpoint Classification Package
-/

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure EndpointClassificationPackage {P : SaturatedFormationPackage}
    {C : CanonicalResidualsPackage P} where
  targetGroup : Type u
  groupStr : Group targetGroup
  isFiniteSolvable : Prop
  formationMembership : Prop
  endpointMatchesFormationStatement : Prop

structure EndpointClassificationEvidence {P : SaturatedFormationPackage}
    {C : CanonicalResidualsPackage P} (E : EndpointClassificationPackage) where
  targetGroupClosed : E.formationMembership
  endpointMatchesFormationStatementClosed : E.endpointMatchesFormationStatement

def EndpointClassificationClosed {P : SaturatedFormationPackage}
    {C : CanonicalResidualsPackage P} (E : EndpointClassificationPackage) : Prop :=
  E.formationMembership ∧ E.endpointMatchesFormationStatement

theorem endpoint_classification_closed_from_evidence {P : SaturatedFormationPackage}
    {C : CanonicalResidualsPackage P} (E : EndpointClassificationPackage)
    (Ev : EndpointClassificationEvidence E) : EndpointClassificationClosed E :=
  by exact And.intro Ev.targetGroupClosed Ev.endpointMatchesFormationStatementClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
