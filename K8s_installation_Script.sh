echo <<EOF 
"##############################################################
# K8s_installation_Script.sh
# This script installs Kubernetes on a Linux system.
##############################################################"
EOF

sudo tee /etc/yum.repos.d/epel.repo > /dev/null <
[epel]
name=Extra Packages for Enterprise Linux 8
baseurl=https://download.fedoraproject.org/pub/epel/8/Everything/\$basearch
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-8
EOF

sudo dnf install -y kubelet kubeadm kubectl 

sudo systemctl enable --now kubelet

sudo systemctl start kubelet

systemctl status kubelet 