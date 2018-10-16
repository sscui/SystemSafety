.class public Landroid/support/constraint/solver/widgets/Optimizer;
.super Ljava/lang/Object;
.source "Optimizer.java"


# static fields
.field static final FLAG_CHAIN_DANGLING:I = 0x1

.field static final FLAG_RECOMPUTE_BOUNDS:I = 0x2

.field static final FLAG_USE_OPTIMIZE:I = 0x0

.field public static final OPTIMIZATION_BARRIER:I = 0x2

.field public static final OPTIMIZATION_CHAIN:I = 0x4

.field public static final OPTIMIZATION_DIMENSIONS:I = 0x8

.field public static final OPTIMIZATION_DIRECT:I = 0x1

.field public static final OPTIMIZATION_NONE:I = 0x0

.field public static final OPTIMIZATION_RATIO:I = 0x10

.field public static final OPTIMIZATION_STANDARD:I = 0x3

.field static flags:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Landroid/support/constraint/solver/widgets/Optimizer;->flags:[Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static analyze(ILandroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 18
    .param p0, "optimisationLevel"    # I
    .param p1, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 151
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->updateResolutionNodes()V

    .line 153
    iget-object v1, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v1

    .line 154
    .local v1, "leftNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v2, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v2

    .line 155
    .local v2, "topNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v3, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v3

    .line 156
    .local v3, "rightNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v4, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    .line 158
    .local v4, "bottomNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    and-int/lit8 v5, p0, 0x8

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 162
    .local v5, "optimiseDimensions":Z
    :goto_28
    iget-object v9, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v9, v9, v7

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v9, v10, :cond_38

    .line 163
    invoke-static {v0, v7}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v9

    if-eqz v9, :cond_38

    const/4 v9, 0x1

    goto :goto_39

    :cond_38
    const/4 v9, 0x0

    .line 165
    .local v9, "isOptimizableHorizontalMatch":Z
    :goto_39
    iget v10, v1, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v11, 0x2

    if-eq v10, v12, :cond_1b7

    iget v10, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_1b7

    .line 167
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v7

    sget-object v7, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v7, :cond_fd

    if-eqz v9, :cond_57

    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_57

    goto/16 :goto_fd

    .line 207
    :cond_57
    if-eqz v9, :cond_1b7

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    .line 214
    .local v7, "width":I
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 215
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 216
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_7f

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_7f

    .line 217
    if-eqz v5, :cond_7a

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 220
    :cond_7a
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 222
    :cond_7f
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_9b

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_9b

    .line 223
    if-eqz v5, :cond_96

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v3, v1, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 226
    :cond_96
    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 228
    :cond_9b
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_b8

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_b8

    .line 229
    if-eqz v5, :cond_b2

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v1, v3, v14, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 232
    :cond_b2
    neg-int v10, v7

    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 234
    :cond_b8
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b7

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_1b7

    .line 235
    if-eqz v5, :cond_d4

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 239
    :cond_d4
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_e9

    .line 240
    const/4 v10, 0x3

    invoke-virtual {v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 241
    invoke-virtual {v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 242
    invoke-virtual {v1, v3, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 243
    invoke-virtual {v3, v1, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_1b7

    .line 246
    :cond_e9
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 247
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 248
    neg-int v10, v7

    int-to-float v10, v10

    invoke-virtual {v1, v3, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 249
    int-to-float v10, v7

    invoke-virtual {v3, v1, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 250
    invoke-virtual {v0, v7}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 250
    .end local v7    # "width":I
    goto/16 :goto_1b7

    .line 169
    :cond_fd
    :goto_fd
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_123

    .line 170
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 171
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 172
    if-eqz v5, :cond_11a

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 175
    :cond_11a
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_1b7

    .line 177
    :cond_123
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_148

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_148

    .line 178
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 179
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 180
    if-eqz v5, :cond_140

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_1b7

    .line 183
    :cond_140
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 185
    :cond_148
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v7, :cond_175

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_175

    .line 186
    invoke-virtual {v1, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 187
    invoke-virtual {v3, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 189
    if-eqz v5, :cond_16c

    .line 190
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 192
    :cond_16c
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_1b7

    .line 194
    :cond_175
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v7, :cond_1b7

    .line 195
    invoke-virtual {v1, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 196
    invoke-virtual {v3, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 197
    if-eqz v5, :cond_1a6

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 200
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v1, v3, v14, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v7

    invoke-virtual {v3, v1, v8, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_1b7

    .line 203
    :cond_1a6
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v1, v3, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 204
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v1, v7}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 258
    :cond_1b7
    :goto_1b7
    iget-object v7, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v8

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v10, :cond_1c7

    .line 259
    invoke-static {v0, v8}, Landroid/support/constraint/solver/widgets/Optimizer;->optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z

    move-result v7

    if-eqz v7, :cond_1c7

    const/4 v15, 0x1

    goto :goto_1c8

    :cond_1c7
    const/4 v15, 0x0

    :goto_1c8
    move v7, v15

    .line 261
    .local v7, "isOptimizableVerticalMatch":Z
    iget v10, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_391

    iget v10, v4, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->type:I

    if-eq v10, v12, :cond_391

    .line 264
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v10, v10, v8

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v10, v12, :cond_298

    if-eqz v7, :cond_1e3

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v10

    if-ne v10, v6, :cond_1e3

    goto/16 :goto_298

    .line 317
    :cond_1e3
    if-eqz v7, :cond_391

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    .line 323
    .local v6, "height":I
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 324
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 325
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20b

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_20b

    .line 326
    if-eqz v5, :cond_206

    .line 327
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_391

    .line 329
    :cond_206
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_391

    .line 331
    :cond_20b
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_227

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_227

    .line 332
    if-eqz v5, :cond_222

    .line 333
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v4, v2, v8, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_391

    .line 335
    :cond_222
    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_391

    .line 337
    :cond_227
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v10, :cond_244

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_244

    .line 338
    if-eqz v5, :cond_23e

    .line 339
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v8

    invoke-virtual {v2, v4, v14, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto/16 :goto_391

    .line 341
    :cond_23e
    neg-int v8, v6

    invoke-virtual {v2, v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_391

    .line 343
    :cond_244
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_391

    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v10, v10, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v10, :cond_391

    .line 344
    if-eqz v5, :cond_260

    .line 345
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 348
    :cond_260
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v10, v10, v13

    if-nez v10, :cond_275

    .line 349
    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 350
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 351
    invoke-virtual {v2, v4, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 352
    invoke-virtual {v4, v2, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    goto/16 :goto_391

    .line 354
    :cond_275
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 355
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 356
    neg-int v10, v6

    int-to-float v10, v10

    invoke-virtual {v2, v4, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 357
    int-to-float v10, v6

    invoke-virtual {v4, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 358
    invoke-virtual {v0, v6}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 359
    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v10, :cond_391

    .line 360
    iget-object v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v10

    iget v11, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v10, v8, v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 360
    .end local v6    # "height":I
    goto/16 :goto_391

    .line 266
    :cond_298
    :goto_298
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_2d8

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_2d8

    .line 267
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 268
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 269
    if-eqz v5, :cond_2b4

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2bb

    .line 272
    :cond_2b4
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 274
    :goto_2bb
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_391

    .line 275
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 276
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 277
    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    neg-int v10, v10

    .line 276
    invoke-virtual {v2, v8, v6, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_391

    .line 279
    :cond_2d8
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_30c

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_30c

    .line 280
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 281
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 282
    if-eqz v5, :cond_2f4

    .line 283
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_2fb

    .line 285
    :cond_2f4
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 287
    :goto_2fb
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_391

    .line 288
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto/16 :goto_391

    .line 290
    :cond_30c
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-nez v6, :cond_340

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_340

    .line 291
    invoke-virtual {v2, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 292
    invoke-virtual {v4, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 293
    if-eqz v5, :cond_328

    .line 294
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    goto :goto_330

    .line 296
    :cond_328
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(Landroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 298
    :goto_330
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_391

    .line 299
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    goto :goto_391

    .line 301
    :cond_340
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_391

    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_391

    .line 302
    invoke-virtual {v2, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 303
    invoke-virtual {v4, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setType(I)V

    .line 304
    if-eqz v5, :cond_371

    .line 305
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v2, v4, v14, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v4, v2, v8, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;ILandroid/support/constraint/solver/widgets/ResolutionDimension;)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionHeight()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getResolutionWidth()Landroid/support/constraint/solver/widgets/ResolutionDimension;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/constraint/solver/widgets/ResolutionDimension;->addDependent(Landroid/support/constraint/solver/widgets/ResolutionNode;)V

    goto :goto_382

    .line 310
    :cond_371
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v4, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v2, v6}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->setOpposite(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 313
    :goto_382
    iget v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-lez v6, :cond_391

    .line 314
    iget-object v6, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget v10, v0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    invoke-virtual {v6, v8, v2, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->dependsOn(ILandroid/support/constraint/solver/widgets/ResolutionAnchor;I)V

    .line 366
    :cond_391
    :goto_391
    return-void
.end method

.method static applyChainOptimized(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;IILandroid/support/constraint/solver/widgets/ChainHead;)Z
    .registers 49
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "orientation"    # I
    .param p3, "offset"    # I
    .param p4, "chainHead"    # Landroid/support/constraint/solver/widgets/ChainHead;

    move-object/from16 v0, p1

    .line 382
    move-object/from16 v1, p4

    iget-object v2, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirst:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 383
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLast:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 384
    .local v3, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v4, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 385
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v5, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastVisibleWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 386
    .local v5, "lastVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v6, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mHead:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 388
    .local v6, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v7, v2

    .line 389
    .local v7, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v8, 0x0

    .line 390
    .local v8, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    const/4 v9, 0x0

    .line 392
    .local v9, "done":Z
    const/4 v10, 0x0

    .line 393
    .local v10, "numMatchConstraints":I
    iget v11, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mTotalWeight:F

    .line 394
    .local v11, "totalWeights":F
    iget-object v12, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 395
    .local v12, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v13, v1, Landroid/support/constraint/solver/widgets/ChainHead;->mLastMatchConstraintWidget:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 397
    .local v13, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v1, p0

    move-object v14, v7

    iget-object v7, v1, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 397
    .end local v7    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v7, v7, p2

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    move-object/from16 v16, v8

    .line 397
    .end local v8    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v16, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v7, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 398
    .local v1, "isWrapContent":Z
    :goto_29
    const/4 v7, 0x0

    .line 399
    .local v7, "isChainSpread":Z
    const/16 v17, 0x0

    .line 400
    .local v17, "isChainSpreadInside":Z
    const/16 v18, 0x0

    .line 402
    .local v18, "isChainPacked":Z
    if-nez p2, :cond_4d

    .line 403
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    if-nez v8, :cond_36

    const/4 v8, 0x1

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    :goto_37
    move v7, v8

    .line 404
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v20, v1

    const/4 v1, 0x1

    if-ne v8, v1, :cond_41

    .line 404
    .end local v1    # "isWrapContent":Z
    .local v20, "isWrapContent":Z
    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    .line 405
    .end local v17    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_42
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    move/from16 v21, v1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_4b

    .line 405
    .end local v1    # "isChainSpreadInside":Z
    .local v21, "isChainSpreadInside":Z
    const/4 v1, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    .line 405
    .end local v18    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    :goto_4c
    goto :goto_6b

    .line 407
    .end local v20    # "isWrapContent":Z
    .end local v21    # "isChainSpreadInside":Z
    .local v1, "isWrapContent":Z
    .restart local v17    # "isChainSpreadInside":Z
    .restart local v18    # "isChainPacked":Z
    :cond_4d
    move/from16 v20, v1

    .line 407
    .end local v1    # "isWrapContent":Z
    .restart local v20    # "isWrapContent":Z
    iget v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    if-nez v1, :cond_55

    const/4 v1, 0x1

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    :goto_56
    move v7, v1

    .line 408
    iget v1, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_5e

    const/4 v1, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    .line 409
    .end local v17    # "isChainSpreadInside":Z
    .local v1, "isChainSpreadInside":Z
    :goto_5f
    iget v8, v6, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalChainStyle:I

    move/from16 v22, v1

    const/4 v1, 0x2

    if-ne v8, v1, :cond_68

    .line 409
    .end local v1    # "isChainSpreadInside":Z
    .local v22, "isChainSpreadInside":Z
    const/4 v1, 0x1

    goto :goto_69

    :cond_68
    const/4 v1, 0x0

    .line 416
    .end local v18    # "isChainPacked":Z
    .local v1, "isChainPacked":Z
    :goto_69
    move/from16 v21, v22

    .line 416
    .end local v22    # "isChainSpreadInside":Z
    .restart local v21    # "isChainSpreadInside":Z
    :goto_6b
    const/4 v8, 0x0

    .line 417
    .local v8, "totalSize":F
    const/16 v17, 0x0

    .line 418
    .local v17, "totalMargins":F
    move-object/from16 v23, v6

    move v6, v10

    move-object v10, v14

    move v14, v8

    const/4 v8, 0x0

    .line 420
    .local v6, "numMatchConstraints":I
    .local v8, "numVisibleWidgets":I
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v14, "totalSize":F
    .local v23, "head":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_74
    if-nez v9, :cond_128

    .line 422
    move/from16 v24, v9

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v9

    .line 422
    .end local v9    # "done":Z
    .local v24, "done":Z
    move-object/from16 v25, v12

    const/16 v12, 0x8

    .line 422
    .end local v12    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v25, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eq v9, v12, :cond_b7

    .line 423
    add-int/lit8 v8, v8, 0x1

    .line 424
    if-nez p2, :cond_8d

    .line 425
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    goto :goto_93

    .line 427
    :cond_8d
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    .line 429
    :goto_93
    if-eq v10, v4, :cond_9f

    .line 430
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v14, v9

    .line 432
    :cond_9f
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 433
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v9, v9, v18

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    int-to-float v9, v9

    add-float v17, v17, v9

    .line 436
    :cond_b7
    iget-object v9, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    .line 438
    .local v9, "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    move/from16 v26, v8

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    .line 438
    .end local v8    # "numVisibleWidgets":I
    .local v26, "numVisibleWidgets":I
    if-eq v8, v12, :cond_eb

    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, p2

    sget-object v12, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v12, :cond_eb

    .line 440
    add-int/lit8 v6, v6, 0x1

    .line 442
    if-nez p2, :cond_dd

    .line 443
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v8, :cond_d4

    .line 444
    return v15

    .line 445
    :cond_d4
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v8, :cond_dc

    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v8, :cond_eb

    .line 446
    :cond_dc
    return v15

    .line 449
    :cond_dd
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v8, :cond_e2

    .line 450
    return v15

    .line 451
    :cond_e2
    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v8, :cond_ea

    iget v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v8, :cond_eb

    .line 452
    :cond_ea
    return v15

    .line 458
    :cond_eb
    iget-object v8, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v12, p3, 0x1

    aget-object v8, v8, v12

    iget-object v8, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 459
    .local v8, "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    if-eqz v8, :cond_111

    .line 460
    iget-object v12, v8, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 461
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v27, v6

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 461
    .end local v6    # "numMatchConstraints":I
    .local v27, "numMatchConstraints":I
    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    if-eqz v6, :cond_10f

    iget-object v6, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mTarget:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v6, v6, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mOwner:Landroid/support/constraint/solver/widgets/ConstraintWidget;

    if-eq v6, v10, :cond_10c

    goto :goto_10f

    .line 467
    :cond_10c
    move-object/from16 v16, v12

    goto :goto_116

    .line 462
    :cond_10f
    :goto_10f
    const/4 v6, 0x0

    .line 462
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_114

    .line 465
    .end local v27    # "numMatchConstraints":I
    .local v6, "numMatchConstraints":I
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_111
    move/from16 v27, v6

    .line 465
    .end local v6    # "numMatchConstraints":I
    .restart local v27    # "numMatchConstraints":I
    const/4 v6, 0x0

    .line 467
    :goto_114
    move-object/from16 v16, v6

    :goto_116
    if-eqz v16, :cond_11e

    .line 468
    move-object/from16 v6, v16

    .line 472
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v6, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object v10, v6

    move/from16 v9, v24

    goto :goto_120

    .line 470
    .end local v6    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_11e
    const/4 v6, 0x1

    .line 472
    .end local v8    # "nextAnchor":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v9    # "begin":Landroid/support/constraint/solver/widgets/ConstraintAnchor;
    .end local v24    # "done":Z
    .local v6, "done":Z
    move v9, v6

    .line 418
    .end local v6    # "done":Z
    .local v9, "done":Z
    :goto_120
    move-object/from16 v12, v25

    move/from16 v8, v26

    move/from16 v6, v27

    goto/16 :goto_74

    .line 474
    .end local v25    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v26    # "numVisibleWidgets":I
    .end local v27    # "numMatchConstraints":I
    .local v6, "numMatchConstraints":I
    .local v8, "numVisibleWidgets":I
    .local v12, "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_128
    move/from16 v24, v9

    move-object/from16 v25, v12

    .line 474
    .end local v9    # "done":Z
    .end local v12    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v24    # "done":Z
    .restart local v25    # "firstMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v9, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v9, v9, p3

    invoke-virtual {v9}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v9

    .line 475
    .local v9, "firstNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    iget-object v12, v3, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v12, v12, v18

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v12

    .line 477
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    move-object/from16 v28, v3

    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 477
    .end local v3    # "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v28, "last":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_45a

    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    if-nez v3, :cond_15a

    .line 479
    move-object v3, v2

    move/from16 v41, v6

    move/from16 v36, v7

    move/from16 v42, v8

    move-object/from16 v32, v10

    move/from16 v43, v11

    move-object/from16 v33, v12

    move-object/from16 v29, v13

    move-object v8, v4

    goto/16 :goto_46a

    .line 483
    :cond_15a
    iget-object v3, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    move-object/from16 v29, v13

    const/4 v13, 0x1

    if-eq v3, v13, :cond_16a

    .line 483
    .end local v13    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v29, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget-object v3, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v3, v3, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->state:I

    if-eq v3, v13, :cond_16a

    .line 486
    return v15

    .line 489
    :cond_16a
    if-lez v6, :cond_16f

    if-eq v6, v8, :cond_16f

    .line 491
    return v15

    .line 494
    :cond_16f
    const/4 v3, 0x0

    .line 495
    .local v3, "extraMargin":F
    if-nez v1, :cond_176

    if-nez v7, :cond_176

    if-eqz v21, :cond_18f

    .line 496
    :cond_176
    if-eqz v4, :cond_181

    .line 497
    iget-object v13, v4, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v13, v13, p3

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v3, v13

    .line 499
    :cond_181
    if-eqz v5, :cond_18f

    .line 500
    iget-object v13, v5, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v18, p3, 0x1

    aget-object v13, v13, v18

    invoke-virtual {v13}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v3, v13

    .line 504
    :cond_18f
    iget-object v13, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    iget v13, v13, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 505
    .local v13, "firstOffset":F
    move-object/from16 v30, v2

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->target:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    .line 505
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v30, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    iget v2, v2, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedOffset:F

    .line 506
    .local v2, "lastOffset":F
    const/16 v18, 0x0

    .line 507
    .local v18, "distance":F
    cmpg-float v19, v13, v2

    if-gez v19, :cond_1a4

    .line 508
    sub-float v19, v2, v13

    sub-float v19, v19, v14

    .line 508
    .end local v18    # "distance":F
    .local v19, "distance":F
    :goto_1a3
    goto :goto_1a9

    .line 510
    .end local v19    # "distance":F
    .restart local v18    # "distance":F
    :cond_1a4
    sub-float v19, v13, v2

    sub-float v19, v19, v14

    goto :goto_1a3

    .line 513
    .end local v18    # "distance":F
    .restart local v19    # "distance":F
    :goto_1a9
    const-wide/16 v26, 0x1

    if-lez v6, :cond_2bb

    if-ne v6, v8, :cond_2bb

    .line 514
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v18

    if-eqz v18, :cond_1c6

    move/from16 v31, v2

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getParent()Landroid/support/constraint/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 514
    .end local v2    # "lastOffset":F
    .local v31, "lastOffset":F
    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v2, p2

    move-object/from16 v32, v10

    sget-object v10, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 514
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v32, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-ne v2, v10, :cond_1ca

    .line 515
    return v15

    .line 517
    .end local v31    # "lastOffset":F
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "lastOffset":F
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1c6
    move/from16 v31, v2

    move-object/from16 v32, v10

    .line 517
    .end local v2    # "lastOffset":F
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v31    # "lastOffset":F
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1ca
    add-float v19, v19, v14

    .line 518
    sub-float v19, v19, v17

    .line 519
    move-object v2, v4

    .line 520
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move v10, v13

    .line 521
    .local v10, "position":F
    if-eqz v7, :cond_1d6

    .line 522
    sub-float v15, v17, v3

    sub-float v19, v19, v15

    .line 524
    :cond_1d6
    if-eqz v7, :cond_1fe

    .line 525
    move-object/from16 v33, v12

    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 525
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v33, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    add-int/lit8 v15, p3, 0x1

    aget-object v12, v12, v15

    invoke-virtual {v12}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v10, v12

    .line 526
    iget-object v12, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v12, p2

    .line 527
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-eqz v12, :cond_1fb

    .line 528
    move-object/from16 v34, v2

    iget-object v2, v12, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 528
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v34, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v2, v2, p3

    invoke-virtual {v2}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v10, v2

    .line 531
    move-object/from16 v2, v34

    goto :goto_204

    .line 531
    .end local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1fb
    move-object/from16 v34, v2

    .line 531
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    goto :goto_204

    .line 531
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v34    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_1fe
    move-object/from16 v34, v2

    move-object/from16 v33, v12

    move-object/from16 v12, v16

    .line 531
    .end local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    :goto_204
    if-eqz v2, :cond_2ad

    .line 532
    sget-object v15, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v15, :cond_22f

    .line 533
    move-object/from16 v35, v12

    sget-object v12, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    .line 533
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v35, "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move/from16 v36, v7

    move/from16 v37, v8

    iget-wide v7, v12, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 533
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .local v36, "isChainSpread":Z
    .local v37, "numVisibleWidgets":I
    move/from16 v39, v3

    move-object/from16 v38, v4

    sub-long v3, v7, v26

    .line 533
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v38, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v39, "extraMargin":F
    iput-wide v3, v12, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 534
    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v3, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    move/from16 v40, v13

    add-long v12, v7, v26

    .line 534
    .end local v13    # "firstOffset":F
    .local v40, "firstOffset":F
    iput-wide v12, v3, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 535
    sget-object v3, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v3, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v7, v26

    iput-wide v12, v3, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_23b

    .line 537
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "extraMargin":F
    .end local v40    # "firstOffset":F
    .restart local v3    # "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .restart local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v13    # "firstOffset":F
    :cond_22f
    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v35, v12

    move/from16 v40, v13

    .line 537
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "firstOffset":F
    .restart local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "extraMargin":F
    .restart local v40    # "firstOffset":F
    :goto_23b
    iget-object v3, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v12, v3, p2

    .line 538
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v12, :cond_243

    if-ne v2, v5, :cond_2a0

    .line 539
    :cond_243
    int-to-float v3, v6

    div-float v3, v19, v3

    .line 540
    .local v3, "dimension":F
    const/4 v4, 0x0

    cmpl-float v4, v11, v4

    if-lez v4, :cond_253

    .line 541
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mWeight:[F

    aget v4, v4, p2

    mul-float v4, v4, v19

    div-float v3, v4, v11

    .line 543
    :cond_253
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v10, v4

    .line 544
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v4, v7, v10}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 546
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v8, v10, v3

    invoke-virtual {v4, v7, v8}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 548
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 549
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 550
    add-float/2addr v10, v3

    .line 551
    iget-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v4, v4, v7

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v10, v4

    .line 553
    .end local v3    # "dimension":F
    :cond_2a0
    move-object v2, v12

    .line 531
    move/from16 v7, v36

    move/from16 v8, v37

    move-object/from16 v4, v38

    move/from16 v3, v39

    move/from16 v13, v40

    goto/16 :goto_204

    .line 555
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "extraMargin":F
    .end local v40    # "firstOffset":F
    .local v3, "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .restart local v13    # "firstOffset":F
    :cond_2ad
    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v35, v12

    move/from16 v40, v13

    .line 555
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v12    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "firstOffset":F
    .restart local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "extraMargin":F
    .restart local v40    # "firstOffset":F
    const/4 v3, 0x1

    return v3

    .line 558
    .end local v31    # "lastOffset":F
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v35    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v36    # "isChainSpread":Z
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v39    # "extraMargin":F
    .end local v40    # "firstOffset":F
    .local v2, "lastOffset":F
    .restart local v3    # "extraMargin":F
    .restart local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v7    # "isChainSpread":Z
    .restart local v8    # "numVisibleWidgets":I
    .local v10, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v12, "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v13    # "firstOffset":F
    .restart local v16    # "next":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_2bb
    move/from16 v31, v2

    move/from16 v39, v3

    move-object/from16 v38, v4

    move/from16 v36, v7

    move/from16 v37, v8

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    move/from16 v40, v13

    .line 558
    .end local v2    # "lastOffset":F
    .end local v3    # "extraMargin":F
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v7    # "isChainSpread":Z
    .end local v8    # "numVisibleWidgets":I
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v13    # "firstOffset":F
    .restart local v31    # "lastOffset":F
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v36    # "isChainSpread":Z
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v39    # "extraMargin":F
    .restart local v40    # "firstOffset":F
    cmpg-float v2, v19, v14

    if-gez v2, :cond_2d0

    .line 559
    return v15

    .line 562
    :cond_2d0
    if-eqz v1, :cond_374

    .line 563
    sub-float v19, v19, v39

    .line 565
    move-object/from16 v2, v38

    .line 566
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    move-object/from16 v3, v30

    invoke-virtual {v3}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHorizontalBiasPercent()F

    move-result v4

    .line 566
    .end local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v3, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    mul-float v4, v4, v19

    add-float v13, v40, v4

    .line 567
    .end local v19    # "distance":F
    .local v13, "distance":F
    move-object v10, v2

    move/from16 v19, v13

    .line 567
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v13    # "distance":F
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v19    # "distance":F
    :goto_2e3
    if-eqz v10, :cond_36a

    .line 568
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_301

    .line 569
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    sub-long v12, v7, v26

    iput-wide v12, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 570
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v12, v7, v26

    iput-wide v12, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 571
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v7, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v12, v7, v26

    iput-wide v12, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    .line 573
    :cond_301
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v16, v2, p2

    .line 574
    if-nez v16, :cond_309

    if-ne v10, v5, :cond_366

    .line 575
    :cond_309
    const/4 v2, 0x0

    .line 576
    .local v2, "dimension":F
    if-nez p2, :cond_312

    .line 577
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    int-to-float v2, v4

    goto :goto_317

    .line 579
    :cond_312
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v2, v4

    .line 581
    :goto_317
    iget-object v4, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v4, v4, p3

    invoke-virtual {v4}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v4

    int-to-float v4, v4

    add-float v4, v19, v4

    .line 582
    .end local v19    # "distance":F
    .local v4, "distance":F
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v7, v8, v4}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 584
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    iget-object v8, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v12, v4, v2

    invoke-virtual {v7, v8, v12}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 586
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v7, v7, p3

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 587
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 588
    add-float/2addr v4, v2

    .line 589
    iget-object v7, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v8, p3, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v7

    int-to-float v7, v7

    add-float v19, v4, v7

    .line 591
    .end local v2    # "dimension":F
    .end local v4    # "distance":F
    .restart local v19    # "distance":F
    :cond_366
    move-object/from16 v10, v16

    goto/16 :goto_2e3

    .line 643
    :cond_36a
    move/from16 v41, v6

    move/from16 v43, v11

    .line 643
    .end local v6    # "numMatchConstraints":I
    .end local v11    # "totalWeights":F
    .end local v37    # "numVisibleWidgets":I
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v41, "numMatchConstraints":I
    .local v42, "numVisibleWidgets":I
    .local v43, "totalWeights":F
    :goto_36e
    move/from16 v42, v37

    move-object/from16 v8, v38

    goto/16 :goto_458

    .line 593
    .end local v3    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v8    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v41    # "numMatchConstraints":I
    .end local v42    # "numVisibleWidgets":I
    .end local v43    # "totalWeights":F
    .restart local v6    # "numMatchConstraints":I
    .restart local v11    # "totalWeights":F
    .restart local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v37    # "numVisibleWidgets":I
    .restart local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_374
    move-object/from16 v3, v30

    .line 593
    .end local v30    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    if-nez v36, :cond_382

    if-eqz v21, :cond_37b

    goto :goto_382

    .line 643
    :cond_37b
    move/from16 v41, v6

    move/from16 v43, v11

    move-object/from16 v10, v32

    goto :goto_36e

    .line 594
    :cond_382
    :goto_382
    if-eqz v36, :cond_387

    .line 595
    sub-float v19, v19, v39

    goto :goto_38b

    .line 596
    :cond_387
    if-eqz v21, :cond_38b

    .line 597
    sub-float v19, v19, v39

    .line 599
    :cond_38b
    :goto_38b
    move-object/from16 v2, v38

    .line 600
    .end local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v2, "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    add-int/lit8 v8, v37, 0x1

    int-to-float v4, v8

    div-float v4, v19, v4

    .line 601
    .local v4, "gap":F
    if-eqz v21, :cond_3a4

    .line 602
    move/from16 v7, v37

    const/4 v8, 0x1

    if-le v7, v8, :cond_39f

    .line 603
    .end local v37    # "numVisibleWidgets":I
    .local v7, "numVisibleWidgets":I
    add-int/lit8 v8, v7, -0x1

    int-to-float v8, v8

    div-float v4, v19, v8

    goto :goto_3a6

    .line 605
    :cond_39f
    const/high16 v8, 0x40000000    # 2.0f

    div-float v4, v19, v8

    goto :goto_3a6

    .line 608
    .end local v7    # "numVisibleWidgets":I
    .restart local v37    # "numVisibleWidgets":I
    :cond_3a4
    move/from16 v7, v37

    .line 608
    .end local v37    # "numVisibleWidgets":I
    .restart local v7    # "numVisibleWidgets":I
    :goto_3a6
    add-float v13, v40, v4

    .line 609
    .end local v19    # "distance":F
    .restart local v13    # "distance":F
    if-eqz v21, :cond_3bb

    const/4 v8, 0x1

    if-le v7, v8, :cond_3bb

    .line 610
    move-object/from16 v8, v38

    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    .line 610
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float v13, v40, v10

    goto :goto_3bd

    .line 612
    .end local v8    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3bb
    move-object/from16 v8, v38

    .line 612
    .end local v38    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v8    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :goto_3bd
    if-eqz v36, :cond_3cb

    .line 613
    if-eqz v8, :cond_3cb

    .line 614
    iget-object v10, v8, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v10, v10, p3

    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v13, v10

    .line 617
    .end local v2    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_3cb
    move-object v10, v2

    :goto_3cc
    if-eqz v10, :cond_450

    .line 618
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    if-eqz v2, :cond_3f1

    .line 619
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    move/from16 v41, v6

    move/from16 v42, v7

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 619
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "numVisibleWidgets":I
    .restart local v41    # "numMatchConstraints":I
    .restart local v42    # "numVisibleWidgets":I
    move/from16 v43, v11

    sub-long v11, v6, v26

    .line 619
    .end local v11    # "totalWeights":F
    .restart local v43    # "totalWeights":F
    iput-wide v11, v2, Landroid/support/constraint/solver/Metrics;->nonresolvedWidgets:J

    .line 620
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    add-long v11, v6, v26

    iput-wide v11, v2, Landroid/support/constraint/solver/Metrics;->resolvedWidgets:J

    .line 621
    sget-object v2, Landroid/support/constraint/solver/LinearSystem;->sMetrics:Landroid/support/constraint/solver/Metrics;

    iget-wide v6, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    add-long v11, v6, v26

    iput-wide v11, v2, Landroid/support/constraint/solver/Metrics;->chainConnectionResolved:J

    goto :goto_3f7

    .line 623
    .end local v41    # "numMatchConstraints":I
    .end local v42    # "numVisibleWidgets":I
    .end local v43    # "totalWeights":F
    .restart local v6    # "numMatchConstraints":I
    .restart local v7    # "numVisibleWidgets":I
    .restart local v11    # "totalWeights":F
    :cond_3f1
    move/from16 v41, v6

    move/from16 v42, v7

    move/from16 v43, v11

    .line 623
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "numVisibleWidgets":I
    .end local v11    # "totalWeights":F
    .restart local v41    # "numMatchConstraints":I
    .restart local v42    # "numVisibleWidgets":I
    .restart local v43    # "totalWeights":F
    :goto_3f7
    iget-object v2, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListNextVisibleWidget:[Landroid/support/constraint/solver/widgets/ConstraintWidget;

    aget-object v16, v2, p2

    .line 624
    if-nez v16, :cond_3ff

    if-ne v10, v5, :cond_446

    .line 625
    :cond_3ff
    const/4 v2, 0x0

    .line 626
    .local v2, "dimension":F
    if-nez p2, :cond_408

    .line 627
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    int-to-float v2, v6

    goto :goto_40d

    .line 629
    :cond_408
    invoke-virtual {v10}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    int-to-float v2, v6

    .line 631
    :goto_40d
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    invoke-virtual {v6, v7, v13}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 633
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    iget-object v7, v9, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolvedTarget:Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    add-float v11, v13, v2

    invoke-virtual {v6, v7, v11}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->resolve(Landroid/support/constraint/solver/widgets/ResolutionAnchor;F)V

    .line 635
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    aget-object v6, v6, p3

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 636
    iget-object v6, v10, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListAnchors:[Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    add-int/lit8 v7, p3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->getResolutionNode()Landroid/support/constraint/solver/widgets/ResolutionAnchor;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/support/constraint/solver/widgets/ResolutionAnchor;->addResolvedValue(Landroid/support/constraint/solver/LinearSystem;)V

    .line 637
    add-float v6, v2, v4

    add-float/2addr v13, v6

    .line 639
    .end local v2    # "dimension":F
    :cond_446
    move-object/from16 v10, v16

    .line 617
    move/from16 v6, v41

    move/from16 v7, v42

    move/from16 v11, v43

    goto/16 :goto_3cc

    .line 643
    .end local v4    # "gap":F
    .end local v41    # "numMatchConstraints":I
    .end local v42    # "numVisibleWidgets":I
    .end local v43    # "totalWeights":F
    .restart local v6    # "numMatchConstraints":I
    .restart local v7    # "numVisibleWidgets":I
    .restart local v11    # "totalWeights":F
    :cond_450
    move/from16 v41, v6

    move/from16 v42, v7

    move/from16 v43, v11

    move/from16 v19, v13

    .line 643
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "numVisibleWidgets":I
    .end local v11    # "totalWeights":F
    .end local v13    # "distance":F
    .restart local v19    # "distance":F
    .restart local v41    # "numMatchConstraints":I
    .restart local v42    # "numVisibleWidgets":I
    .restart local v43    # "totalWeights":F
    :goto_458
    const/4 v2, 0x1

    return v2

    .line 479
    .end local v3    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v19    # "distance":F
    .end local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v31    # "lastOffset":F
    .end local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v36    # "isChainSpread":Z
    .end local v39    # "extraMargin":F
    .end local v40    # "firstOffset":F
    .end local v41    # "numMatchConstraints":I
    .end local v42    # "numVisibleWidgets":I
    .end local v43    # "totalWeights":F
    .local v2, "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v4, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v6    # "numMatchConstraints":I
    .local v7, "isChainSpread":Z
    .local v8, "numVisibleWidgets":I
    .restart local v11    # "totalWeights":F
    .restart local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .local v13, "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    :cond_45a
    move-object v3, v2

    move/from16 v41, v6

    move/from16 v36, v7

    move/from16 v42, v8

    move-object/from16 v32, v10

    move/from16 v43, v11

    move-object/from16 v33, v12

    move-object/from16 v29, v13

    move-object v8, v4

    .line 479
    .end local v2    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v4    # "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v6    # "numMatchConstraints":I
    .end local v7    # "isChainSpread":Z
    .end local v10    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .end local v11    # "totalWeights":F
    .end local v12    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .end local v13    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v3    # "first":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .local v8, "firstVisibleWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v29    # "previousMatchConstraintsWidget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v32    # "widget":Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .restart local v33    # "lastNode":Landroid/support/constraint/solver/widgets/ResolutionAnchor;
    .restart local v36    # "isChainSpread":Z
    .restart local v41    # "numMatchConstraints":I
    .restart local v42    # "numVisibleWidgets":I
    .restart local v43    # "totalWeights":F
    :goto_46a
    return v15
.end method

.method static checkMatchParent(Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;Landroid/support/constraint/solver/LinearSystem;Landroid/support/constraint/solver/widgets/ConstraintWidget;)V
    .registers 8
    .param p0, "container"    # Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;
    .param p1, "system"    # Landroid/support/constraint/solver/LinearSystem;
    .param p2, "widget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;

    .line 56
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_46

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_46

    .line 59
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 60
    .local v0, "left":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 67
    .local v1, "right":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 68
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 69
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mLeft:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 70
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mRight:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 71
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mHorizontalResolution:I

    .line 73
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setHorizontalDimension(II)V

    .line 75
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_46
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v2, :cond_ab

    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_ab

    .line 78
    iget-object v0, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v0, v0, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 79
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/support/constraint/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v1

    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mMargin:I

    sub-int/2addr v1, v2

    .line 86
    .local v1, "bottom":I
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 87
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 88
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mTop:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v0}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 89
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBottom:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    invoke-virtual {p1, v2, v1}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 90
    iget v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    if-gtz v2, :cond_92

    invoke-virtual {p2}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_a6

    .line 91
    :cond_92
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, v4}, Landroid/support/constraint/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroid/support/constraint/solver/SolverVariable;

    move-result-object v4

    iput-object v4, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    .line 92
    iget-object v2, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaseline:Landroid/support/constraint/solver/widgets/ConstraintAnchor;

    iget-object v2, v2, Landroid/support/constraint/solver/widgets/ConstraintAnchor;->mSolverVariable:Landroid/support/constraint/solver/SolverVariable;

    iget v4, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mBaselineDistance:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v2, v4}, Landroid/support/constraint/solver/LinearSystem;->addEquality(Landroid/support/constraint/solver/SolverVariable;I)V

    .line 94
    :cond_a6
    iput v3, p2, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mVerticalResolution:I

    .line 96
    invoke-virtual {p2, v0, v1}, Landroid/support/constraint/solver/widgets/ConstraintWidget;->setVerticalDimension(II)V

    .line 98
    .end local v0    # "top":I
    .end local v1    # "bottom":I
    :cond_ab
    return-void
.end method

.method private static optimizableMatchConstraint(Landroid/support/constraint/solver/widgets/ConstraintWidget;I)Z
    .registers 5
    .param p0, "constraintWidget"    # Landroid/support/constraint/solver/widgets/ConstraintWidget;
    .param p1, "orientation"    # I

    .line 110
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v0, v0, p1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 111
    return v2

    .line 113
    :cond_a
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_20

    .line 114
    iget-object v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-nez p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    aget-object v0, v0, v1

    sget-object v1, Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroid/support/constraint/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_1f

    .line 116
    return v2

    .line 119
    :cond_1f
    return v2

    .line 121
    :cond_20
    if-nez p1, :cond_30

    .line 122
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eqz v0, :cond_27

    .line 123
    return v2

    .line 125
    :cond_27
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-eqz v0, :cond_3e

    .line 126
    :cond_2f
    return v2

    .line 129
    :cond_30
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v0, :cond_35

    .line 130
    return v2

    .line 132
    :cond_35
    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-nez v0, :cond_3f

    iget v0, p0, Landroid/support/constraint/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-eqz v0, :cond_3e

    goto :goto_3f

    .line 136
    :cond_3e
    return v1

    .line 133
    :cond_3f
    :goto_3f
    return v2
.end method
