import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean.FormationClass

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

structure SchunckClassPackage where
  closureUnderEpimorphisms : Prop
  closureUnderSubdirectProducts : Prop
  saturability : Prop
  formationContainsClass : Prop
  classContainsFormation : Prop

structure SchunckClassEvidence (S : SchunckClassPackage) where
  closureUnderEpimorphismsClosed : S.closureUnderEpimorphisms
  closureUnderSubdirectProductsClosed : S.closureUnderSubdirectProducts
  saturabilityClosed : S.saturability
  formationContainsClassClosed : S.formationContainsClass
  classContainsFormationClosed : S.classContainsFormation

def SchunckClassClosed (S : SchunckClassPackage) : Prop :=
  S.closureUnderEpimorphisms ∧ S.closureUnderSubdirectProducts ∧ S.saturability ∧
  S.formationContainsClass ∧ S.classContainsFormation

theorem schunck_class_closed_from_evidence (S : SchunckClassPackage) (E : SchunckClassEvidence S) :
    SchunckClassClosed S := by
  exact And.intro E.closureUnderEpimorphismsClosed
    (And.intro E.closureUnderSubdirectProductsClosed
      (And.intro E.saturabilityClosed
        (And.intro E.formationContainsClassClosed E.classContainsFormationClosed)))

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse