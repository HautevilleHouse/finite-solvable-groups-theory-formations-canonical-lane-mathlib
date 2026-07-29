import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationClosure

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure SaturatedFormation (G : Type u) [Group G] (F : Formation G) where
  isSaturated : Prop
  locallyDefined : Prop
  satWitness : isSaturated

def SaturatedFormationEvidence (F : Formation G) (S : SaturatedFormation G F) where
  isSaturatedClosed : S.isSaturated
  locallyDefinedClosed : S.locallyDefined

def SaturatedFormationClosed (S : SaturatedFormation G F) : Prop :=
  S.isSaturated ∧ S.locallyDefined

theorem saturated_formation_closed_from_evidence (F : Formation G) (S : SaturatedFormation G F) (E : SaturatedFormationEvidence F S) : SaturatedFormationClosed S := by
  exact And.intro E.isSaturatedClosed E.locallyDefinedClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse