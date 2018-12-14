FROM apluslms/grading-base:2.7

COPY etc_apt /etc/apt

RUN gpg_recv 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' \
  && gpg -a --export 'E19F5F87128899B192B1A2C2AD5F960A256A04AF' | apt-key add - \
  && apt_install \
    r-base

