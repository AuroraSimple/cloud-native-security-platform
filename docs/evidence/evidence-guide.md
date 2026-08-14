# 프로젝트 증적 관리 기준

## 1. 증적 목적

프로젝트 수행 결과가 실제 실행과 검증을 기반으로 했음을
화면 캡처, 로그, 코드 및 보고서를 통해 증명한다.

## 2. 증적 종류

### E1. 환경 증적

- 운영체제
- 사용자
- CPU 아키텍처
- 설치 도구 버전
- 프로젝트 작업 경로

### E2. 구성 증적

- Terraform 코드
- Kubernetes YAML
- IAM Policy
- GitHub Actions Workflow
- 보안 정책 파일

### E3. 실행 증적

- terraform init
- terraform plan
- terraform apply
- docker build
- docker run
- kubectl apply
- GitHub Actions 실행 결과

### E4. 상태 증적

- AWS Console
- kubectl get
- docker ps
- 서비스 접속 화면
- Grafana Dashboard

### E5. 로그 증적

- 애플리케이션 로그
- Kubernetes Event
- CI/CD 로그
- Prometheus Alert
- Loki 검색 결과

### E6. 보안 증적

- IAM 권한 거부 테스트
- Trivy 검사 결과
- RBAC 권한 거부 테스트
- NetworkPolicy 차단 결과
- Kyverno 정책 차단 결과

### E7. 조치 전후 증적

1. 초기 상태
2. 문제 또는 취약점 재현
3. 원인 분석
4. 설정 변경
5. 재검증
6. 개선 결과

## 3. 캡처 기준

캡처 화면에는 가능한 경우 다음 내용을 포함한다.

- 실행 날짜와 시간
- 사용자명
- 호스트명
- 현재 경로
- 실행한 명령어
- 명령 실행 결과
- 성공 또는 실패 메시지
- 정상 판정에 필요한 값

## 4. 파일 이름 규칙

형식:

단계번호-실습번호-내용-상태

예시:

- 01-01-mac-environment-baseline.png
- 03-02-vpc-route-table-success.png
- 04-03-terraform-plan-success.png
- 06-04-pod-crash-before.png
- 06-05-pod-crash-fixed.png
- 09-02-trivy-before.txt
- 09-03-trivy-after.txt

## 5. 증적 설명 형식

각 증적은 다음 내용을 설명한다.

- 증적 제목
- 수행 목적
- 실행 내용
- 정상 판정 기준
- 확인 결과
- 기술적 의미
- 보안상 의미

## 6. 민감정보 주의사항

다음 정보가 캡처 또는 로그에 포함되지 않도록 한다.

- AWS Access Key
- AWS Secret Access Key
- GitHub Token
- 비밀번호
- 세션 토큰
- 개인키
- kubeconfig 인증정보
- Terraform 상태 파일 내용
- 환경변수 파일 내용

민감정보가 포함된 화면은 캡처하지 않거나 반드시 마스킹한다.
