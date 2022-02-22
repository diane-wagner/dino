# List available just commands
@list:
  just --list

# ---------------------------------------------------------------------------------------
# BASELINES - SIMSIAM ON CIFAR10
# ---------------------------------------------------------------------------------------

# Submit DINO
@dino EXPERIMENT_NAME:
  #!/usr/bin/env bash
  mkdir -p /work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/
  sbatch --output=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --error=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --export=EXPERIMENT_NAME={{EXPERIMENT_NAME}} cluster/submit_dino.sh

# Submit Test DINO
@test_dino EXPERIMENT_NAME:
  #!/usr/bin/env bash
  mkdir -p /work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/
  sbatch --output=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --error=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --export=EXPERIMENT_NAME={{EXPERIMENT_NAME}} cluster/submit_test_dino.sh

# Submit DINO - linear classifier
@dino_lin-class EXPERIMENT_NAME:
  #!/usr/bin/env bash
  mkdir -p /work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/
  sbatch --output=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --error=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --export=EXPERIMENT_NAME={{EXPERIMENT_NAME}} cluster/submit_dino_linear-classifier.sh

# Submit Test DINO - linear classifier
@test_dino_lin-class EXPERIMENT_NAME:
  #!/usr/bin/env bash
  mkdir -p /work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/
  sbatch --output=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --error=/work/dlclarge2/wagnerd-metassl-experiments/dino/{{EXPERIMENT_NAME}}/cluster_oe/%x.%A.%a.%N.err_out --export=EXPERIMENT_NAME={{EXPERIMENT_NAME}} cluster/submit_test_dino_linear-classifier.sh

