package com.jgalescky.demoparkapi.repository;

import com.jgalescky.demoparkapi.entity.Vaga;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VagaRepository extends JpaRepository<Vaga, Long> {
}
