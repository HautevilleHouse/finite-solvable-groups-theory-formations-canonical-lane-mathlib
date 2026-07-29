import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.SaturatedFormation

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure LocalFormation (G : Type u) [Group G] where
  primes : Set Nat
  localFormationFunction : Prime → Formation G
  consistency : Prop

structure CanonicalLocalFormation (G : Type u) [Group G] (F : Formation G) (L : LocalFormation G) where
  isCanonical : Prop
  saturatedCanonical : SaturatedFormation G F
  formationMatches : Prop
  canonicalWitness : isCanonical

def CanonicalLocalFormationEvidence (F : Formation G) (L : LocalFormation G) (C : CanonicalLocalFormation G F L) where
  isCanonicalClosed : C.isCanonical
  formationMatchesClosed : C.formationMatches

def CanonicalLocalFormationClosed (C : CanonicalLocalFormation G F L) : Prop :=
  C.isCanonical ∧ C.formationMatches

theorem canonical_local_formation_closed_from_evidence (F : Formation G) (L : LocalFormation G) (C : CanonicalLocalFormation G F L) (E : CanonicalLocalFormationEvidence F L C) : CanonicalLocalFormationClosed C := by
  exact And.intro E.isCanonicalClosed E.formationMatchesClosed

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse