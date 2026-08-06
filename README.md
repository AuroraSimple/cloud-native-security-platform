# Cloud Native Security Platform on AWS

Terraform으로 AWS 인프라를 구축하고 Docker 기반 애플리케이션을
Amazon EKS에 배포하며, CI/CD, 모니터링, 로깅 및 보안 정책을
통합 구현하는 클라우드 네이티브 플랫폼 프로젝트입니다.

## 프로젝트 목표

1. AWS 인프라를 Terraform 코드로 재현합니다.
2. Docker 애플리케이션을 Kubernetes에 배포합니다.
3. GitHub Actions로 빌드와 배포를 자동화합니다.
4. Prometheus, Grafana, Loki로 메트릭과 로그를 관측합니다.
5. IAM, RBAC, NetworkPolicy 및 Kyverno 정책을 적용합니다.
6. 구축, 테스트, 장애 및 보안 조치 결과를 증적으로 남깁니다.

## 핵심 기술

| 분야 | 기술 |
|---|---|
| Cloud | AWS |
| Identity | AWS IAM |
| Network | VPC, Subnet, Route Table, NAT Gateway, ALB |
| Operating System | Linux |
| Infrastructure as Code | Terraform |
| Container | Docker |
| Orchestration | Kubernetes, Amazon EKS |
| CI/CD | GitHub Actions |
| Monitoring | Prometheus, Grafana |
| Logging | Loki |
| Security | Trivy, Kyverno, RBAC, NetworkPolicy |

## 프로젝트 단계

- [x] Mac 개발환경 기준선 확인
- [x] 프로젝트 디렉터리 표준화
- [x] Git 보안 제외 정책 구성
- [ ] 프로젝트 문서 및 보고서 템플릿 작성
- [ ] GitHub 저장소 연동
- [ ] Linux 및 네트워크 실습
- [ ] AWS IAM 및 VPC 설계
- [ ] Terraform 인프라 구현
- [ ] Docker 이미지 구축
- [ ] Kubernetes 및 Amazon EKS 배포
- [ ] CI/CD 파이프라인 구축
- [ ] 로그 및 모니터링 구성
- [ ] 보안 정책 적용
- [ ] 장애 및 복구 테스트
- [ ] 최종 기술보고서 및 발표자료 작성

## 프로젝트 구조

    k8s-project/
    ├── app/
    ├── infra/
    ├── terraform/
    ├── kubernetes/
    ├── monitoring/
    ├── security/
    ├── docs/
    ├── reports/
    ├── screenshots/
    ├── scripts/
    └── .github/
        └── workflows/

## 증적 관리 원칙

각 실습은 다음 정보를 기록합니다.

1. 실습 목적
2. 사전 환경
3. 실행 명령어와 설정
4. 실행 결과
5. 정상 판정 기준
6. 오류 및 해결 과정
7. 보안상 의미
8. 화면 캡처
9. Git 커밋

## 보안 원칙

다음 정보는 GitHub 저장소에 포함하지 않습니다.

- AWS Access Key
- AWS Secret Access Key
- GitHub Token
- 비밀번호와 환경변수 파일
- 개인키
- Kubernetes kubeconfig 인증정보
- Terraform 상태 파일

Terraform 상태 파일은 이후 AWS S3 원격 백엔드와 상태 잠금을 이용해 관리합니다.
