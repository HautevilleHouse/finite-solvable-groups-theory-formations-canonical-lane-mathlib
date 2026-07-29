import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationAdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.SaturatedFormation

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure LocalFormationPackage (P : SaturatedFormationPackage) where
  prime : ℕ
  formationAtPrime : Set (Type u)
  localCriterion : ∀ (G : Type u)[Group G], G ∈ P.formation ↔
    (∀ (p : ℕ) (PGroup : Sylow p G), PGroup ∈ formationAtPrime)

structure LocalFormationEvidence {P : SaturatedFormationPackage}
    (L : LocalFormationPackage P) where
  localCriterionClosed : L.localCriterion

def LocalFormationClosed {P : SaturatedFormationPackage}
    (L : LocalFormationPackage P) : Prop :=
  L.localCriterion

theorem local_formation_closed_from_evidence {P : SaturatedFormationPackage}
    (L : LocalFormationPackage P) (E : LocalFormationEvidence L) :
    LocalFormationClosed L := by
  exact E.localCriterionClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse