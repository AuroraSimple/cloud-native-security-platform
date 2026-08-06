# 프로젝트 실행 계획

## 1. 프로젝트명

Cloud Native Security Platform on AWS

## 2. 프로젝트 목적

AWS, Terraform, Kubernetes, CI/CD, 모니터링 및 보안 정책 기술을
하나의 통합 프로젝트로 구현한다.

실제 명령 실행 화면, 클라우드 리소스 화면, 로그, 테스트 결과 및
기술 문서를 통해 클라우드 플랫폼 구축·운영 능력을 증명한다.

## 3. 구축 범위

- AWS IAM
- AWS VPC 및 네트워크
- Terraform Infrastructure as Code
- Docker 이미지 빌드
- Amazon ECR
- Amazon EKS
- Kubernetes 애플리케이션 배포
- GitHub Actions CI/CD
- Prometheus 및 Grafana
- Loki 로그 수집
- Trivy 이미지 취약점 검사
- Kubernetes RBAC
- NetworkPolicy
- Kyverno 보안 정책
- 장애 및 복구 테스트

## 4. 주요 산출물

- GitHub 소스코드
- AWS 아키텍처 다이어그램
- Terraform 코드
- Kubernetes Manifest
- CI/CD Workflow
- Grafana Dashboard
- 로그 분석 결과
- 보안 진단 결과
- 운영 Runbook
- 실습 증적
- 최종 기술보고서
- 발표자료

## 5. 단계별 진행 계획

### Phase 1. 프로젝트 기준선

- 개발환경 확인
- 프로젝트 디렉터리 생성
- Git 보안 정책 구성
- GitHub 저장소 연동

### Phase 2. Linux 및 네트워크

- Linux 사용자와 권한
- 프로세스 및 서비스 관리
- 로그 분석
- TCP/IP, DNS, CIDR, Routing, NAT

### Phase 3. AWS IAM 및 VPC

- IAM 사용자와 역할
- 최소 권한 정책
- VPC
- Public 및 Private Subnet
- Internet Gateway
- NAT Gateway
- Security Group
- Route Table

### Phase 4. Terraform

- Provider
- Backend
- Variables
- Modules
- VPC 및 IAM 자동화
- ECR 및 EKS 자동화

### Phase 5. Docker

- Dockerfile
- 이미지 빌드
- 컨테이너 실행
- 이미지 취약점 검사
- ECR Push

### Phase 6. Kubernetes 및 EKS

- Deployment
- Service
- ConfigMap
- Secret
- Ingress
- HPA
- Rolling Update
- Rollback

### Phase 7. CI/CD

- GitHub Actions
- 테스트 자동화
- Docker 이미지 빌드
- ECR Push
- Kubernetes 배포

### Phase 8. 로그 및 모니터링

- Prometheus
- Grafana
- Loki
- Alert
- 장애 탐지

### Phase 9. 보안 정책

- IAM 최소 권한
- Kubernetes RBAC
- NetworkPolicy
- Trivy
- Kyverno
- 보안 조치 전후 비교

### Phase 10. 검증 및 보고서

- 장애 재현
- 복구 테스트
- 보안 테스트
- 증적 정리
- 기술보고서
- 발표자료

## 6. 단계별 검증 기준

각 실습에서 다음 항목을 확인한다.

1. 실습 목적
2. 사전 상태
3. 실행 명령어
4. 설정 파일
5. 실제 실행 결과
6. 정상 판정 기준
7. 오류 및 해결 과정
8. 보안상 의미
9. 화면 캡처
10. Git 커밋

## 7. 완료 기준

프로젝트는 다음 조건을 만족할 때 완료된 것으로 판단한다.

- Terraform으로 AWS 인프라를 재현할 수 있다.
- Docker 애플리케이션을 EKS에 배포할 수 있다.
- GitHub Actions를 통해 자동 배포할 수 있다.
- 메트릭과 로그를 수집하고 장애를 분석할 수 있다.
- IAM 및 Kubernetes 보안 정책을 적용할 수 있다.
- 모든 구축 및 검증 과정이 증적과 문서로 남아 있다.
