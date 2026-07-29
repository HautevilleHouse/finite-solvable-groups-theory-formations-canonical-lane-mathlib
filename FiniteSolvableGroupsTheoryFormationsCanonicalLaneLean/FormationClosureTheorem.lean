import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

def formationBridgeClosed (A : AdmissibleClass) : Prop :=
  FormationClosed (A.object.formGroup)

lemma formation_bridge_from_admissible_class (A : AdmissibleClass) : formationBridgeClosed A := by
  exact A.object.formGroup.conclusion

def formationGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

lemma formation_gate_from_admissible_class (A : AdmissibleClass) : formationGateClosed A := by
  exact A.gateWitness

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse