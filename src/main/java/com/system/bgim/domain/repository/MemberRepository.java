package com.system.bgim.domain.repository;

import java.util.Optional;

public class MemberRepository extends JpaRepository<MemberEntity, Long>{

	Optional<MemberEntity> findByEmail(String userEmail);
}
