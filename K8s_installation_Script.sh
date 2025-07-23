echo <<EOF 
"##############################################################
# K8s_installation_Script.sh
# This script installs Kubernetes on a Linux system.
##############################################################"
EOF

sudo tee /etc/yum.repos.d/kubernetes.repo <<EOF
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.32/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.33/rpm/repodata/repomd.xml.key
EOF


sudo dnf install -y kubelet kubeadm kubectl 

sudo systemctl enable --now kubelet

sudo systemctl start kubelet

systemctl status kubelet 