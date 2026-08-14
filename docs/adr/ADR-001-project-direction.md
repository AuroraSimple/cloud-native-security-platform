# ADR-001: 프로젝트 기술 방향 결정

## 상태

승인

## 배경

클라우드, Infrastructure as Code, Kubernetes, CI/CD,
모니터링 및 보안 기술을 개별 실습이 아니라 하나의 통합된
플랫폼 프로젝트로 구현할 필요가 있다.

## 결정

다음 기술 구성을 사용한다.

- Cloud: AWS
- Identity: AWS IAM
- Infrastructure as Code: Terraform
- Container: Docker
- Container Registry: Amazon ECR
- Kubernetes: Amazon EKS
- CI/CD: GitHub Actions
- Metrics: Prometheus
- Dashboard: Grafana
- Logging: Loki
- Image Security: Trivy
- Kubernetes Policy: Kyverno
- Authorization: Kubernetes RBAC
- Network Security: NetworkPolicy

## 결정 이유

AWS, Terraform 및 Kubernetes 조합은 클라우드 플랫폼,
DevOps, SRE 및 클라우드 보안 역량을 함께 증명할 수 있다.

인프라와 정책을 코드로 관리하면 다음 장점을 확보할 수 있다.

- 재현성
- 변경 추적성
- 자동화
- 검토 가능성
- 감사 가능성
- 장애 복구 용이성

## 고려한 대안

- Azure 및 AKS
- GCP 및 GKE
- Jenkins
- GitLab CI
- Elasticsearch 기반 로그 플랫폼
- OPA Gatekeeper

## 결과

프로젝트의 초기 구현은 AWS를 중심으로 진행한다.

구조와 문서는 특정 클라우드 서비스에 지나치게 종속되지 않도록
설계하여 향후 Azure 또는 GCP로 확장할 수 있도록 한다.
