# iac-terraform
# Projet Terraform : Infrastructure as Code Modulaire

## Description
Ce projet utilise Terraform pour déployer une infrastructure AWS complète et modulaire.  
L’objectif est de créer une VPC personnalisée, des sous-réseaux, un groupe de sécurité,  
une instance EC2 avec une application web factice derrière un Application Load Balancer (ALB).  

---

## Architecture

- **VPC** : réseau privé personnalisé
- **Sous-réseaux** : public et privé
- **Groupes de sécurité** : règles de firewall
- **Instance EC2** : serveur virtuel avec user data pour installer une app simple
- **Application Load Balancer** : distribue le trafic vers l’instance

---

## Prérequis

- Compte AWS avec des permissions suffisantes
- Terraform installé (version recommandée 1.3+)
- Clé SSH configurée pour accéder à l’instance EC2
- Variables AWS configurées en tant que variables d’environnement ou dans `terraform.tfvars`

---

## Utilisation

1. Cloner ce dépôt :

   ```bash
   git clone git@github.com:aumayma/iac-terraform.git
   cd iac-terraform
