FROM base/archlinux

RUN pacman-key --recv F7FD5492264BB9D0 && \
    pacman-key --lsign F7FD5492264BB9D0 && \
    echo "[dkp-libs]" >> /etc/pacman.conf && \
    echo "Server = http://downloads.devkitpro.org/packages" >> /etc/pacman.conf && \
    echo "[dkp-linux]" >> /etc/pacman.conf && \
    echo "Server = http://downloads.devkitpro.org/packages/linux" >> /etc/pacman.conf && \
    pacman -Syu --noconfirm && \
    pacman -U --noconfirm https://downloads.devkitpro.org/devkitpro-keyring-r1.787e015-2-any.pkg.tar.xz && \
    pacman -S --noconfirm \
        aarch64-linux-gnu-glibc \
        aarch64-linux-gnu-gcc \
        arm-none-eabi-gcc \
        devkitA64 \
        devkitARM \
        general-tools \
        libnx \
        make \
        sudo \
        switch-tools

ARG uid

RUN useradd -d /developer -m -u $uid developer && \
    chown -R $uid /developer && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer

USER developer
ENV HOME=/developer
WORKDIR /developer

VOLUME /developer

CMD /bin/bash
