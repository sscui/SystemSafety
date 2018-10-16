.class public Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation


# static fields
.field private static final DBG_ANIMATOR_INFLATER:Z = false

.field private static final MAX_NUM_POINTS:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x3

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VALUE_TYPE_PATH:I = 0x2

.field private static final VALUE_TYPE_UNDEFINED:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "parent"    # Landroid/animation/AnimatorSet;
    .param p6, "sequenceOrdering"    # I
    .param p7, "pixelSize"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "anim":Landroid/animation/Animator;
    const/4 v1, 0x0

    .line 514
    .local v1, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v7, v0

    move-object v12, v1

    .line 514
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v1    # "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, "depth":I
    .local v7, "anim":Landroid/animation/Animator;
    .local v12, "childAnims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_10
    move v13, v2

    .line 516
    .end local v2    # "depth":I
    .local v13, "depth":I
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .line 516
    .local v14, "type":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_20

    goto :goto_26

    .line 559
    :cond_20
    move-object/from16 v1, p0

    move/from16 v19, v13

    goto/16 :goto_fe

    .line 516
    :cond_26
    :goto_26
    const/4 v0, 0x1

    if-eq v14, v0, :cond_fa

    .line 519
    const/4 v0, 0x2

    if-eq v14, v0, :cond_2f

    .line 520
    nop

    .line 514
    move v2, v13

    goto :goto_10

    .line 523
    :cond_2f
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 524
    .local v15, "name":Ljava/lang/String;
    const/16 v16, 0x0

    .line 526
    .local v16, "gotValues":Z
    const-string v0, "objectAnimator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 527
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object v5, v10

    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 552
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v13    # "depth":I
    .restart local v0    # "anim":Landroid/animation/Animator;
    .local v19, "depth":I
    :goto_4a
    move-object/from16 v1, p0

    move-object v7, v0

    move/from16 v19, v13

    goto/16 :goto_c9

    .line 528
    .end local v0    # "anim":Landroid/animation/Animator;
    .end local v19    # "depth":I
    .restart local v7    # "anim":Landroid/animation/Animator;
    .restart local v13    # "depth":I
    :cond_51
    const-string v0, "animator"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 529
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object/from16 v3, p4

    move/from16 v5, p7

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_4a

    .line 530
    :cond_68
    const-string v0, "set"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 531
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v17, v0

    .line 532
    .end local v7    # "anim":Landroid/animation/Animator;
    .local v17, "anim":Landroid/animation/Animator;
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    move-object/from16 v7, p4

    invoke-static {v8, v9, v7, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 535
    .local v6, "a":Landroid/content/res/TypedArray;
    const-string v0, "ordering"

    const/4 v1, 0x0

    invoke-static {v6, v10, v0, v1, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v18

    .line 538
    .local v18, "ordering":I
    move-object/from16 v5, v17

    check-cast v5, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v7

    move/from16 v19, v13

    move-object v13, v6

    move/from16 v6, v18

    .line 538
    .end local v6    # "a":Landroid/content/res/TypedArray;
    .local v13, "a":Landroid/content/res/TypedArray;
    .restart local v19    # "depth":I
    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 540
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    .end local v13    # "a":Landroid/content/res/TypedArray;
    .end local v18    # "ordering":I
    nop

    .line 552
    move-object/from16 v1, p0

    move-object/from16 v7, v17

    goto :goto_c9

    .line 541
    .end local v17    # "anim":Landroid/animation/Animator;
    .end local v19    # "depth":I
    .restart local v7    # "anim":Landroid/animation/Animator;
    .local v13, "depth":I
    :cond_a3
    move/from16 v19, v13

    .line 541
    .end local v13    # "depth":I
    .restart local v19    # "depth":I
    const-string v0, "propertyValuesHolder"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 542
    nop

    .line 543
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 542
    move-object/from16 v1, p0

    invoke-static {v1, v8, v9, v10, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 544
    .local v0, "values":[Landroid/animation/PropertyValuesHolder;
    if-eqz v0, :cond_c6

    if-eqz v7, :cond_c6

    instance-of v2, v7, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_c6

    .line 545
    move-object v2, v7

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 547
    :cond_c6
    const/16 v16, 0x1

    .line 548
    .end local v0    # "values":[Landroid/animation/PropertyValuesHolder;
    nop

    .line 552
    :goto_c9
    if-eqz v11, :cond_d8

    if-nez v16, :cond_d8

    .line 553
    if-nez v12, :cond_d5

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 556
    :cond_d5
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    :cond_d8
    nop

    .line 514
    move/from16 v2, v19

    goto/16 :goto_10

    .line 549
    .restart local v15    # "name":Ljava/lang/String;
    .restart local v16    # "gotValues":Z
    :cond_dd
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animator name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "gotValues":Z
    .end local v19    # "depth":I
    .restart local v13    # "depth":I
    :cond_fa
    move-object/from16 v1, p0

    move/from16 v19, v13

    .line 559
    .end local v13    # "depth":I
    .restart local v19    # "depth":I
    :goto_fe
    if-eqz v11, :cond_129

    if-eqz v12, :cond_129

    .line 560
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/animation/Animator;

    .line 561
    .local v0, "animsArray":[Landroid/animation/Animator;
    const/4 v2, 0x0

    .line 562
    .local v2, "index":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_120

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    .line 563
    .local v4, "a":Landroid/animation/Animator;
    add-int/lit8 v5, v2, 0x1

    .line 563
    .local v5, "index":I
    aput-object v4, v0, v2

    .line 564
    .end local v2    # "index":I
    .end local v4    # "a":Landroid/animation/Animator;
    nop

    .line 562
    move v2, v5

    goto :goto_10d

    .line 565
    .end local v5    # "index":I
    .restart local v2    # "index":I
    :cond_120
    if-nez p6, :cond_126

    .line 566
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_129

    .line 568
    :cond_126
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 571
    .end local v0    # "animsArray":[Landroid/animation/Animator;
    .end local v2    # "index":I
    :cond_129
    :goto_129
    return-object v7
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .registers 4
    .param p0, "sampleKeyframe"    # Landroid/animation/Keyframe;
    .param p1, "fraction"    # F

    .line 779
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 780
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    .line 781
    :cond_d
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1a

    .line 782
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v0

    goto :goto_1e

    .line 783
    :cond_1a
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object v0

    :goto_1e
    return-object v0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .registers 9
    .param p0, "keyframes"    # [Landroid/animation/Keyframe;
    .param p1, "gap"    # F
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 806
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    .line 807
    .local v0, "count":I
    int-to-float v1, v0

    div-float v1, p1, v1

    .line 808
    .local v1, "increment":F
    move v2, p2

    .line 808
    .local v2, "i":I
    :goto_8
    if-gt v2, p3, :cond_1b

    .line 809
    aget-object v3, p0, v2

    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 808
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 811
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method private static dumpKeyframes([Ljava/lang/Object;Ljava/lang/String;)V
    .registers 9
    .param p0, "keyframes"    # [Ljava/lang/Object;
    .param p1, "header"    # Ljava/lang/String;

    .line 673
    if-eqz p0, :cond_63

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_63

    .line 676
    :cond_6
    const-string v0, "AnimatorInflater"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    array-length v0, p0

    .line 678
    .local v0, "count":I
    const/4 v1, 0x0

    .line 678
    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_62

    .line 679
    aget-object v2, p0, v1

    check-cast v2, Landroid/animation/Keyframe;

    .line 680
    .local v2, "keyframe":Landroid/animation/Keyframe;
    const-string v3, "AnimatorInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Keyframe "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": fraction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_33

    const-string v5, "null"

    goto :goto_3b

    :cond_33
    invoke-virtual {v2}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    :goto_3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v2}, Landroid/animation/Keyframe;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-virtual {v2}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_55

    :cond_53
    const-string v5, "null"

    :goto_55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v2    # "keyframe":Landroid/animation/Keyframe;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 684
    .end local v1    # "i":I
    :cond_62
    return-void

    .line 674
    .end local v0    # "count":I
    :cond_63
    :goto_63
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .registers 25
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueType"    # I
    .param p2, "valueFromId"    # I
    .param p3, "valueToId"    # I
    .param p4, "propertyName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 206
    move-object/from16 v3, p4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 207
    .local v4, "tvFrom":Landroid/util/TypedValue;
    if-eqz v4, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    const/4 v7, 0x0

    .line 208
    .local v7, "hasFrom":Z
    :goto_11
    if-eqz v7, :cond_16

    iget v8, v4, Landroid/util/TypedValue;->type:I

    goto :goto_17

    :cond_16
    const/4 v8, 0x0

    .line 209
    .local v8, "fromType":I
    :goto_17
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 210
    .local v9, "tvTo":Landroid/util/TypedValue;
    if-eqz v9, :cond_1f

    const/4 v10, 0x1

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 211
    .local v10, "hasTo":Z
    :goto_20
    if-eqz v10, :cond_25

    iget v11, v9, Landroid/util/TypedValue;->type:I

    goto :goto_26

    :cond_25
    const/4 v11, 0x0

    .line 213
    .local v11, "toType":I
    :goto_26
    const/4 v12, 0x4

    move/from16 v13, p1

    if-ne v13, v12, :cond_3f

    .line 215
    if-eqz v7, :cond_33

    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-nez v12, :cond_3b

    :cond_33
    if-eqz v10, :cond_3d

    invoke-static {v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 216
    :cond_3b
    const/4 v12, 0x3

    .line 216
    .end local p1    # "valueType":I
    .local v12, "valueType":I
    :goto_3c
    goto :goto_40

    .line 218
    .end local v12    # "valueType":I
    .restart local p1    # "valueType":I
    :cond_3d
    const/4 v12, 0x0

    goto :goto_3c

    .line 222
    :cond_3f
    move v12, v13

    .line 222
    .end local p1    # "valueType":I
    .restart local v12    # "valueType":I
    :goto_40
    if-nez v12, :cond_44

    const/4 v13, 0x1

    goto :goto_45

    :cond_44
    const/4 v13, 0x0

    .line 224
    .local v13, "getFloats":Z
    :goto_45
    const/4 v14, 0x0

    .line 226
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x2

    if-ne v12, v15, :cond_dc

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 228
    .local v5, "fromString":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "toString":Ljava/lang/String;
    nop

    .line 231
    invoke-static {v5}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v15

    .line 232
    .local v15, "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    nop

    .line 233
    move-object/from16 v16, v4

    invoke-static {v6}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v4

    .line 234
    .local v4, "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .local v16, "tvFrom":Landroid/util/TypedValue;
    if-nez v15, :cond_6a

    if-eqz v4, :cond_62

    goto :goto_6a

    .line 254
    .end local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    :cond_62
    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    goto/16 :goto_d4

    .line 235
    .restart local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .restart local v5    # "fromString":Ljava/lang/String;
    .restart local v6    # "toString":Ljava/lang/String;
    .restart local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    :cond_6a
    :goto_6a
    move-object/from16 v17, v9

    const/4 v9, 0x0

    .line 235
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .local v17, "tvTo":Landroid/util/TypedValue;
    if-eqz v15, :cond_be

    .line 236
    move-object/from16 v18, v14

    new-instance v14, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    .line 236
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v18, "returnValue":Landroid/animation/PropertyValuesHolder;
    invoke-direct {v14, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    move-object v9, v14

    .line 237
    .local v9, "evaluator":Landroid/animation/TypeEvaluator;
    if-eqz v4, :cond_b0

    .line 238
    invoke-static {v15, v4}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v14

    if-nez v14, :cond_a0

    .line 239
    new-instance v14, Landroid/view/InflateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v11

    const-string v11, " Can\'t morph from "

    .line 239
    .end local v11    # "toType":I
    .local v19, "toType":I
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 242
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    :cond_a0
    move/from16 v19, v11

    .line 242
    .end local v11    # "toType":I
    .restart local v19    # "toType":I
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v15, v2, v11

    const/4 v14, 0x1

    aput-object v4, v2, v14

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 242
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v2, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_bc

    .line 245
    .end local v2    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_b0
    move/from16 v19, v11

    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 245
    .end local v11    # "toType":I
    .restart local v19    # "toType":I
    new-array v2, v14, [Ljava/lang/Object;

    aput-object v15, v2, v11

    invoke-static {v3, v9, v2}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 248
    .end local v9    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_bc
    move-object v14, v2

    goto :goto_d6

    .line 248
    .end local v19    # "toType":I
    .restart local v11    # "toType":I
    :cond_be
    move/from16 v19, v11

    move-object/from16 v18, v14

    .line 248
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    if-eqz v4, :cond_d4

    .line 249
    new-instance v2, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v2, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(Landroid/support/graphics/drawable/AnimatorInflaterCompat$1;)V

    .line 250
    .local v2, "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v9, v11

    invoke-static {v3, v2, v9}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 250
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    .end local v4    # "nodesTo":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v5    # "fromString":Ljava/lang/String;
    .end local v6    # "toString":Ljava/lang/String;
    .end local v15    # "nodesFrom":[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_d6

    .line 254
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    .end local v19    # "toType":I
    .local v9, "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_d4
    :goto_d4
    move-object/from16 v14, v18

    .line 330
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    .restart local v19    # "toType":I
    :goto_d6
    move/from16 v9, v19

    move/from16 v11, p3

    goto/16 :goto_1d0

    .line 255
    .end local v16    # "tvFrom":Landroid/util/TypedValue;
    .end local v17    # "tvTo":Landroid/util/TypedValue;
    .end local v19    # "toType":I
    .local v4, "tvFrom":Landroid/util/TypedValue;
    .restart local v9    # "tvTo":Landroid/util/TypedValue;
    .restart local v11    # "toType":I
    :cond_dc
    move-object/from16 v16, v4

    move-object/from16 v17, v9

    move/from16 v19, v11

    move-object/from16 v18, v14

    .line 255
    .end local v4    # "tvFrom":Landroid/util/TypedValue;
    .end local v9    # "tvTo":Landroid/util/TypedValue;
    .end local v11    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "tvFrom":Landroid/util/TypedValue;
    .restart local v17    # "tvTo":Landroid/util/TypedValue;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    const/4 v2, 0x0

    .line 257
    .restart local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    const/4 v4, 0x3

    if-ne v12, v4, :cond_ec

    .line 259
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v2

    .line 261
    :cond_ec
    const/4 v4, 0x5

    const/4 v5, 0x0

    if-eqz v13, :cond_14a

    .line 264
    if-eqz v7, :cond_12e

    .line 265
    if-ne v8, v4, :cond_f9

    .line 266
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    .line 266
    .local v6, "valueFrom":F
    goto :goto_fd

    .line 268
    .end local v6    # "valueFrom":F
    :cond_f9
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 270
    .restart local v6    # "valueFrom":F
    :goto_fd
    if-eqz v10, :cond_11f

    .line 271
    move/from16 v9, v19

    if-ne v9, v4, :cond_10a

    .line 272
    .end local v19    # "toType":I
    .local v9, "toType":I
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 272
    .local v4, "valueTo":F
    goto :goto_110

    .line 274
    .end local v4    # "valueTo":F
    :cond_10a
    move/from16 v11, p3

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 276
    .restart local v4    # "valueTo":F
    :goto_110
    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v14, 0x0

    aput v6, v5, v14

    const/4 v15, 0x1

    aput v4, v5, v15

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 289
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v5, "returnValue":Landroid/animation/PropertyValuesHolder;
    move-object v14, v5

    goto :goto_148

    .line 279
    .end local v4    # "valueTo":F
    .end local v5    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_11f
    move/from16 v9, v19

    move/from16 v11, p3

    const/4 v14, 0x0

    const/4 v15, 0x1

    .line 279
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    new-array v4, v15, [F

    aput v6, v4, v14

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 279
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v4, "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_147

    .line 282
    .end local v4    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .end local v6    # "valueFrom":F
    .end local v9    # "toType":I
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_12e
    move/from16 v9, v19

    move/from16 v11, p3

    .line 282
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    if-ne v9, v4, :cond_139

    .line 283
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 283
    .local v4, "valueTo":F
    goto :goto_13d

    .line 285
    .end local v4    # "valueTo":F
    :cond_139
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 287
    .restart local v4    # "valueTo":F
    :goto_13d
    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 289
    .end local v4    # "valueTo":F
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_147
    move-object v14, v4

    :goto_148
    goto/16 :goto_1c9

    .line 292
    .end local v9    # "toType":I
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v19    # "toType":I
    :cond_14a
    move/from16 v9, v19

    move/from16 v11, p3

    .line 292
    .end local v19    # "toType":I
    .restart local v9    # "toType":I
    if-eqz v7, :cond_1a0

    .line 293
    if-ne v8, v4, :cond_159

    .line 294
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    float-to-int v6, v6

    .line 298
    .local v6, "valueFrom":I
    move v14, v6

    goto :goto_16a

    .line 295
    .end local v6    # "valueFrom":I
    :cond_159
    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v6

    if-eqz v6, :cond_165

    .line 296
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 296
    .local v14, "valueFrom":I
    goto :goto_16a

    .line 298
    .end local v14    # "valueFrom":I
    :cond_165
    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 298
    .restart local v14    # "valueFrom":I
    :goto_16a
    move v6, v14

    .line 300
    .end local v14    # "valueFrom":I
    .restart local v6    # "valueFrom":I
    if-eqz v10, :cond_195

    .line 301
    if-ne v9, v4, :cond_177

    .line 302
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 306
    .local v4, "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_188

    .line 303
    .end local v4    # "valueTo":I
    :cond_177
    invoke-static {v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 304
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 304
    .local v5, "valueTo":I
    goto :goto_188

    .line 306
    .end local v5    # "valueTo":I
    :cond_183
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 308
    .restart local v5    # "valueTo":I
    :goto_188
    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v6, v14, v4

    const/4 v15, 0x1

    aput v5, v14, v15

    invoke-static {v3, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    goto :goto_19f

    .line 310
    .end local v5    # "valueTo":I
    :cond_195
    const/4 v4, 0x0

    const/4 v15, 0x1

    new-array v5, v15, [I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 310
    .end local v6    # "valueFrom":I
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .local v14, "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_19f
    goto :goto_1c9

    .line 313
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1a0
    if-eqz v10, :cond_1c7

    .line 314
    if-ne v9, v4, :cond_1ac

    .line 315
    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 319
    .restart local v4    # "valueTo":I
    move v5, v4

    const/4 v4, 0x0

    goto :goto_1bd

    .line 316
    .end local v4    # "valueTo":I
    :cond_1ac
    invoke-static {v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1b8

    .line 317
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 317
    .restart local v5    # "valueTo":I
    goto :goto_1bd

    .line 319
    .end local v5    # "valueTo":I
    :cond_1b8
    const/4 v4, 0x0

    invoke-virtual {v0, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 321
    .restart local v5    # "valueTo":I
    :goto_1bd
    const/4 v6, 0x1

    new-array v6, v6, [I

    aput v5, v6, v4

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 321
    .end local v5    # "valueTo":I
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    goto :goto_1c9

    .line 325
    .end local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :cond_1c7
    move-object/from16 v14, v18

    .line 325
    .end local v18    # "returnValue":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "returnValue":Landroid/animation/PropertyValuesHolder;
    :goto_1c9
    if-eqz v14, :cond_1d0

    if-eqz v2, :cond_1d0

    .line 326
    invoke-virtual {v14, v2}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 330
    .end local v2    # "evaluator":Landroid/animation/TypeEvaluator;
    :cond_1d0
    :goto_1d0
    return-object v14
.end method

.method private static inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I
    .registers 11
    .param p0, "styledAttributes"    # Landroid/content/res/TypedArray;
    .param p1, "valueFromId"    # I
    .param p2, "valueToId"    # I

    .line 655
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 656
    .local v0, "tvFrom":Landroid/util/TypedValue;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    const/4 v3, 0x1

    goto :goto_b

    :cond_a
    const/4 v3, 0x0

    .line 657
    .local v3, "hasFrom":Z
    :goto_b
    if-eqz v3, :cond_10

    iget v4, v0, Landroid/util/TypedValue;->type:I

    goto :goto_11

    :cond_10
    const/4 v4, 0x0

    .line 658
    .local v4, "fromType":I
    :goto_11
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 659
    .local v5, "tvTo":Landroid/util/TypedValue;
    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 660
    .local v1, "hasTo":Z
    :goto_19
    if-eqz v1, :cond_1e

    iget v6, v5, Landroid/util/TypedValue;->type:I

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x0

    .line 664
    .local v6, "toType":I
    :goto_1f
    if-eqz v3, :cond_27

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-nez v7, :cond_2f

    :cond_27
    if-eqz v1, :cond_31

    invoke-static {v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 665
    :cond_2f
    const/4 v2, 0x3

    .line 665
    .local v2, "valueType":I
    goto :goto_32

    .line 667
    .end local v2    # "valueType":I
    :cond_31
    nop

    .line 669
    .restart local v2    # "valueType":I
    :goto_32
    return v2
.end method

.method private static inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 636
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p0, p1, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 639
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "value"

    const/4 v2, 0x0

    invoke-static {v0, p3, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v1

    .line 641
    .local v1, "keyframeValue":Landroid/util/TypedValue;
    if-eqz v1, :cond_11

    const/4 v3, 0x1

    goto :goto_12

    :cond_11
    const/4 v3, 0x0

    .line 644
    .local v3, "hasValue":Z
    :goto_12
    if-eqz v3, :cond_1e

    iget v4, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 645
    const/4 v2, 0x3

    .line 645
    .local v2, "valueType":I
    goto :goto_1f

    .line 647
    .end local v2    # "valueType":I
    :cond_1e
    nop

    .line 649
    .restart local v2    # "valueType":I
    :goto_1f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 650
    return v2
.end method

.method private static isColorType(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 917
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 100
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 100
    .local v0, "objectAnimator":Landroid/animation/Animator;
    goto :goto_17

    .line 102
    .end local v0    # "objectAnimator":Landroid/animation/Animator;
    :cond_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;

    move-result-object v0

    .line 104
    .restart local v0    # "objectAnimator":Landroid/animation/Animator;
    :goto_17
    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 118
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;IF)Landroid/animation/Animator;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "id"    # I
        .annotation build Landroid/support/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p4, "pathErrorScale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 131
    invoke-static {p0, p1, p2, v0, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;F)Landroid/animation/Animator;

    move-result-object v1
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_a} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_13
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    .line 132
    .local v1, "animator":Landroid/animation/Animator;
    nop

    .line 146
    if-eqz v0, :cond_10

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10
    return-object v1

    .line 146
    .end local v1    # "animator":Landroid/animation/Animator;
    :catchall_11
    move-exception v1

    goto :goto_51

    .line 139
    :catch_13
    move-exception v1

    .line 140
    .local v1, "ex":Ljava/io/IOException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw v2

    .line 133
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catch_32
    move-exception v1

    .line 134
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw v2
    :try_end_51
    .catchall {:try_start_14 .. :try_end_51} :catchall_11

    .line 146
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :goto_51
    if-eqz v0, :cond_56

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_56
    throw v1
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "anim"    # Landroid/animation/ValueAnimator;
    .param p5, "pathErrorScale"    # F
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 890
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 892
    .local v0, "arrayAnimator":Landroid/content/res/TypedArray;
    sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    invoke-static {p1, p2, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 895
    .local v1, "arrayObjectAnimator":Landroid/content/res/TypedArray;
    if-nez p4, :cond_14

    .line 896
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    move-object p4, v2

    .line 899
    :cond_14
    invoke-static {p4, v0, v1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    .line 902
    const-string v2, "interpolator"

    const/4 v3, 0x0

    invoke-static {v0, p6, v2, v3, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 904
    .local v2, "resID":I
    if-lez v2, :cond_27

    .line 905
    invoke-static {p0, v2}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 906
    .local v3, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p4, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 909
    .end local v3    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_27
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 910
    if-eqz v1, :cond_2f

    .line 911
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 913
    :cond_2f
    return-object p4
.end method

.method private static loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "valueType"    # I
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 818
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    invoke-static {p1, p2, p3, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 821
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 823
    .local v1, "keyframe":Landroid/animation/Keyframe;
    const-string v2, "fraction"

    const/4 v3, 0x3

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, p5, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v2

    .line 826
    .local v2, "fraction":F
    const-string v4, "value"

    const/4 v5, 0x0

    invoke-static {v0, p5, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->peekNamedValue(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/util/TypedValue;

    move-result-object v4

    .line 828
    .local v4, "keyframeValue":Landroid/util/TypedValue;
    const/4 v6, 0x1

    if-eqz v4, :cond_1c

    const/4 v7, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v7, 0x0

    .line 829
    .local v7, "hasValue":Z
    :goto_1d
    const/4 v8, 0x4

    if-ne p4, v8, :cond_2d

    .line 832
    if-eqz v7, :cond_2c

    iget v8, v4, Landroid/util/TypedValue;->type:I

    invoke-static {v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->isColorType(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 833
    const/4 p4, 0x3

    goto :goto_2d

    .line 835
    :cond_2c
    const/4 p4, 0x0

    .line 839
    :cond_2d
    :goto_2d
    if-eqz v7, :cond_4c

    .line 840
    if-eq p4, v3, :cond_41

    packed-switch p4, :pswitch_data_6c

    goto :goto_4b

    .line 842
    :pswitch_35
    const-string v3, "value"

    const/4 v8, 0x0

    invoke-static {v0, p5, v3, v5, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    .line 844
    .local v3, "value":F
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    .line 845
    goto :goto_4b

    .line 848
    .end local v3    # "value":F
    :cond_41
    :pswitch_41
    const-string v3, "value"

    invoke-static {v0, p5, v3, v5, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 850
    .local v3, "intValue":I
    invoke-static {v2, v3}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v1

    .line 851
    .end local v3    # "intValue":I
    :goto_4b
    goto :goto_58

    .line 854
    :cond_4c
    if-nez p4, :cond_53

    invoke-static {v2}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v3

    goto :goto_57

    .line 855
    :cond_53
    invoke-static {v2}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v3

    :goto_57
    move-object v1, v3

    .line 858
    :goto_58
    const-string v3, "interpolator"

    invoke-static {v0, p5, v3, v6, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedResourceId(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    .line 860
    .local v3, "resID":I
    if-lez v3, :cond_67

    .line 861
    invoke-static {p0, v3}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    .line 862
    .local v5, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {v1, v5}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 864
    .end local v5    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 866
    return-object v1

    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_35
        :pswitch_41
    .end packed-switch
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ObjectAnimator;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "pathErrorScale"    # F
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 872
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 874
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v0

    move v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    .line 876
    return-object v0
.end method

.method private static loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "propertyName"    # Ljava/lang/String;
    .param p5, "valueType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v1, 0x0

    move/from16 v2, p5

    .line 696
    .end local p5    # "valueType":I
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v2, "valueType":I
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .line 696
    .local v4, "type":I
    const/4 v5, 0x3

    if-eq v3, v5, :cond_59

    const/4 v3, 0x1

    if-eq v4, v3, :cond_59

    .line 698
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "name":Ljava/lang/String;
    const-string v5, "keyframe"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 700
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2d

    .line 701
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-static {v12, v13, v5, v14}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeOfKeyframe(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    goto :goto_33

    .line 704
    :cond_2d
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :goto_33
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    move-object/from16 v6, p0

    move-object v7, v12

    move-object v8, v13

    move v10, v2

    move-object v11, v14

    invoke-static/range {v6 .. v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadKeyframe(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;ILorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Keyframe;

    move-result-object v5

    .line 706
    .local v5, "keyframe":Landroid/animation/Keyframe;
    if-eqz v5, :cond_4e

    .line 707
    if-nez v1, :cond_4b

    .line 708
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 710
    :cond_4b
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_4e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 712
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "keyframe":Landroid/animation/Keyframe;
    goto :goto_58

    .line 714
    :cond_52
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :goto_58
    goto :goto_4

    .line 717
    :cond_59
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    if-eqz v1, :cond_14b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v3

    .line 717
    .local v6, "count":I
    if-lez v3, :cond_14b

    .line 723
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 724
    .local v7, "firstKeyframe":Landroid/animation/Keyframe;
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    .line 725
    .local v8, "lastKeyframe":Landroid/animation/Keyframe;
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v9

    .line 726
    .local v9, "endFraction":F
    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v11, v9, v10

    const/4 v15, 0x0

    if-gez v11, :cond_97

    .line 727
    cmpg-float v11, v9, v15

    if-gez v11, :cond_8a

    .line 728
    invoke-virtual {v8, v10}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_97

    .line 730
    :cond_8a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v8, v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v5

    invoke-virtual {v1, v11, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 731
    add-int/lit8 v6, v6, 0x1

    .line 734
    :cond_97
    :goto_97
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v5

    .line 735
    .local v5, "startFraction":F
    cmpl-float v11, v5, v15

    if-eqz v11, :cond_b0

    .line 736
    cmpg-float v11, v5, v15

    if-gez v11, :cond_a7

    .line 737
    invoke-virtual {v7, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_b0

    .line 739
    :cond_a7
    invoke-static {v7, v15}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 740
    add-int/lit8 v6, v6, 0x1

    .line 743
    :cond_b0
    :goto_b0
    new-array v11, v6, [Landroid/animation/Keyframe;

    .line 744
    .local v11, "keyframeArray":[Landroid/animation/Keyframe;
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    nop

    .line 745
    .local v3, "i":I
    :goto_b6
    if-ge v3, v6, :cond_134

    .line 746
    aget-object v10, v11, v3

    .line 747
    .local v10, "keyframe":Landroid/animation/Keyframe;
    invoke-virtual {v10}, Landroid/animation/Keyframe;->getFraction()F

    move-result v17

    cmpg-float v17, v17, v15

    if-gez v17, :cond_120

    .line 748
    if-nez v3, :cond_d0

    .line 749
    invoke-virtual {v10, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    .line 745
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .end local v10    # "keyframe":Landroid/animation/Keyframe;
    .local v19, "value":Landroid/animation/PropertyValuesHolder;
    .local v21, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v22, "type":I
    :goto_c7
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    const/16 v16, 0x0

    goto :goto_128

    .line 750
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .restart local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    .restart local v10    # "keyframe":Landroid/animation/Keyframe;
    :cond_d0
    add-int/lit8 v15, v6, -0x1

    if-ne v3, v15, :cond_da

    .line 751
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v10, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_c7

    .line 755
    :cond_da
    const/high16 v15, 0x3f800000    # 1.0f

    move/from16 v18, v3

    .line 756
    .local v18, "startIndex":I
    move/from16 v16, v3

    .line 757
    .local v16, "endIndex":I
    move/from16 v15, v18

    add-int/lit8 v18, v15, 0x1

    .line 757
    .end local v18    # "startIndex":I
    .local v15, "startIndex":I
    move-object/from16 v19, v0

    move/from16 v0, v16

    .line 757
    .end local v16    # "endIndex":I
    .local v0, "endIndex":I
    .local v18, "j":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    :goto_e8
    move/from16 v20, v18

    .line 757
    .end local v18    # "j":I
    .local v20, "j":I
    move-object/from16 v21, v1

    add-int/lit8 v1, v6, -0x1

    .line 757
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    move/from16 v22, v4

    move/from16 v4, v20

    if-ge v4, v1, :cond_109

    .line 758
    .end local v20    # "j":I
    .local v4, "j":I
    .restart local v22    # "type":I
    aget-object v1, v11, v4

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    const/16 v16, 0x0

    cmpl-float v1, v1, v16

    if-ltz v1, :cond_101

    .line 759
    goto :goto_10b

    .line 761
    :cond_101
    move v0, v4

    .line 757
    add-int/lit8 v18, v4, 0x1

    .line 757
    .end local v4    # "j":I
    .restart local v18    # "j":I
    move-object/from16 v1, v21

    move/from16 v4, v22

    goto :goto_e8

    .line 763
    .end local v18    # "j":I
    :cond_109
    const/16 v16, 0x0

    :goto_10b
    add-int/lit8 v1, v0, 0x1

    aget-object v1, v11, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-int/lit8 v18, v15, -0x1

    aget-object v4, v11, v18

    .line 764
    invoke-virtual {v4}, Landroid/animation/Keyframe;->getFraction()F

    move-result v4

    sub-float/2addr v1, v4

    .line 765
    .local v1, "gap":F
    invoke-static {v11, v1, v15, v0}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    .line 765
    .end local v0    # "endIndex":I
    .end local v1    # "gap":F
    .end local v10    # "keyframe":Landroid/animation/Keyframe;
    .end local v15    # "startIndex":I
    goto :goto_128

    .line 745
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .local v0, "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .local v4, "type":I
    :cond_120
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    const/16 v16, 0x0

    .line 745
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    :goto_128
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move/from16 v4, v22

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    goto :goto_b6

    .line 769
    .end local v3    # "i":I
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .restart local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_134
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    .line 769
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 770
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "value":Landroid/animation/PropertyValuesHolder;
    const/4 v3, 0x3

    if-ne v2, v3, :cond_155

    .line 771
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 771
    .end local v5    # "startFraction":F
    .end local v6    # "count":I
    .end local v7    # "firstKeyframe":Landroid/animation/Keyframe;
    .end local v8    # "lastKeyframe":Landroid/animation/Keyframe;
    .end local v9    # "endFraction":F
    .end local v11    # "keyframeArray":[Landroid/animation/Keyframe;
    goto :goto_155

    .line 775
    .end local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v22    # "type":I
    .restart local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v4    # "type":I
    :cond_14b
    move-object/from16 v19, v0

    move-object/from16 v21, v1

    move/from16 v22, v4

    move-object/from16 v0, p4

    .line 775
    .end local v0    # "value":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .end local v4    # "type":I
    .restart local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .restart local v21    # "keyframes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Keyframe;>;"
    .restart local v22    # "type":I
    move-object/from16 v1, v19

    .line 775
    .end local v19    # "value":Landroid/animation/PropertyValuesHolder;
    .local v1, "value":Landroid/animation/PropertyValuesHolder;
    :cond_155
    :goto_155
    return-object v1
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .registers 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p3

    .line 576
    const/4 v0, 0x0

    .line 576
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_3
    move-object v7, v0

    .line 579
    .end local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .local v7, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v8, v0

    .line 579
    .local v8, "type":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_74

    const/4 v10, 0x1

    if-eq v8, v10, :cond_74

    .line 582
    const/4 v0, 0x2

    if-eq v8, v0, :cond_18

    .line 583
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 584
    nop

    .line 576
    move-object v0, v7

    goto :goto_3

    .line 587
    :cond_18
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 589
    .local v11, "name":Ljava/lang/String;
    const-string v2, "propertyValuesHolder"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 590
    sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-static {v12, v13, v14, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 593
    .local v15, "a":Landroid/content/res/TypedArray;
    const-string v2, "propertyName"

    invoke-static {v15, v6, v2, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 595
    .local v5, "propertyName":Ljava/lang/String;
    const-string v1, "valueType"

    const/4 v2, 0x4

    invoke-static {v15, v6, v1, v0, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    .line 599
    .local v4, "valueType":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v6

    move/from16 v16, v4

    move-object v4, v5

    .line 599
    .end local v4    # "valueType":I
    .local v16, "valueType":I
    move-object v9, v5

    move/from16 v5, v16

    .line 599
    .end local v5    # "propertyName":Ljava/lang/String;
    .local v9, "propertyName":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadPvh(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 601
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    if-nez v0, :cond_56

    .line 602
    move/from16 v1, v16

    const/4 v2, 0x0

    invoke-static {v15, v1, v2, v10, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_58

    .line 607
    :cond_56
    move/from16 v1, v16

    .line 607
    .end local v16    # "valueType":I
    .local v1, "valueType":I
    :goto_58
    if-eqz v0, :cond_65

    .line 608
    if-nez v7, :cond_62

    .line 609
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v2

    .line 611
    :cond_62
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_65
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 613
    .end local v0    # "pvh":Landroid/animation/PropertyValuesHolder;
    .end local v1    # "valueType":I
    .end local v9    # "propertyName":Ljava/lang/String;
    .end local v15    # "a":Landroid/content/res/TypedArray;
    goto :goto_6f

    .line 616
    :cond_69
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    .line 616
    .end local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .local v0, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :goto_6f
    move-object v0, v7

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 617
    .end local v11    # "name":Ljava/lang/String;
    goto :goto_3

    .line 619
    .end local v0    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    .restart local v7    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    :cond_74
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 620
    .local v0, "valuesArray":[Landroid/animation/PropertyValuesHolder;
    if-eqz v7, :cond_92

    .line 621
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    .local v1, "count":I
    new-array v0, v1, [Landroid/animation/PropertyValuesHolder;

    .line 623
    nop

    .line 623
    .local v2, "i":I
    :goto_85
    if-ge v2, v1, :cond_92

    .line 624
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/PropertyValuesHolder;

    aput-object v3, v0, v2

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 627
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_92
    return-object v0
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 344
    const-string v0, "duration"

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-static {p1, p4, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v2, v0

    .line 346
    .local v2, "duration":J
    const-string v0, "startOffset"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p1, p4, v0, v5, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    int-to-long v5, v0

    .line 348
    .local v5, "startDelay":J
    const-string v0, "valueType"

    const/4 v7, 0x4

    const/4 v8, 0x7

    invoke-static {p1, p4, v0, v8, v7}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 352
    .local v0, "valueType":I
    const-string v8, "valueFrom"

    invoke-static {p4, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    const-string v8, "valueTo"

    .line 353
    invoke-static {p4, v8}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 354
    const/4 v8, 0x6

    const/4 v9, 0x5

    if-ne v0, v7, :cond_33

    .line 355
    invoke-static {p1, v9, v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->inferValueTypeFromValues(Landroid/content/res/TypedArray;II)I

    move-result v0

    .line 359
    :cond_33
    const-string v10, ""

    invoke-static {p1, v0, v9, v8, v10}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 362
    .local v8, "pvh":Landroid/animation/PropertyValuesHolder;
    if-eqz v8, :cond_42

    .line 363
    new-array v9, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v8, v9, v4

    invoke-virtual {p0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    .end local v8    # "pvh":Landroid/animation/PropertyValuesHolder;
    :cond_42
    invoke-virtual {p0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {p0, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 369
    const-string v8, "repeatCount"

    const/4 v9, 0x3

    invoke-static {p1, p4, v8, v9, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 371
    const-string v4, "repeatMode"

    invoke-static {p1, p4, v4, v7, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 374
    if-eqz p2, :cond_60

    .line 375
    invoke-static {p0, p2, v0, p3, p4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V

    .line 377
    :cond_60
    return-void
.end method

.method private static setupObjectAnimator(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;IFLorg/xmlpull/v1/XmlPullParser;)V
    .registers 12
    .param p0, "anim"    # Landroid/animation/ValueAnimator;
    .param p1, "arrayObjectAnimator"    # Landroid/content/res/TypedArray;
    .param p2, "valueType"    # I
    .param p3, "pixelSize"    # F
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 389
    move-object v0, p0

    check-cast v0, Landroid/animation/ObjectAnimator;

    .line 390
    .local v0, "oa":Landroid/animation/ObjectAnimator;
    const-string v1, "pathData"

    const/4 v2, 0x1

    invoke-static {p1, p4, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "pathData":Ljava/lang/String;
    if-eqz v1, :cond_4b

    .line 402
    const-string v2, "propertyXName"

    const/4 v3, 0x2

    invoke-static {p1, p4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "propertyXName":Ljava/lang/String;
    const-string v4, "propertyYName"

    const/4 v5, 0x3

    invoke-static {p1, p4, v4, v5}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "propertyYName":Ljava/lang/String;
    if-eq p2, v3, :cond_1f

    const/4 v3, 0x4

    if-ne p2, v3, :cond_20

    .line 411
    :cond_1f
    const/4 p2, 0x0

    .line 413
    :cond_20
    if-nez v2, :cond_3f

    if-nez v4, :cond_3f

    .line 414
    new-instance v3, Landroid/view/InflateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 417
    :cond_3f
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v3

    .line 418
    .local v3, "path":Landroid/graphics/Path;
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v5, v5, p3

    invoke-static {v3, v0, v5, v2, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    .line 420
    .end local v2    # "propertyXName":Ljava/lang/String;
    .end local v3    # "path":Landroid/graphics/Path;
    .end local v4    # "propertyYName":Ljava/lang/String;
    goto :goto_55

    .line 421
    :cond_4b
    const-string v2, "propertyName"

    const/4 v3, 0x0

    .line 422
    invoke-static {p1, p4, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedString(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 428
    .end local v2    # "propertyName":Ljava/lang/String;
    :goto_55
    return-void
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p0, "path"    # Landroid/graphics/Path;
    .param p1, "oa"    # Landroid/animation/ObjectAnimator;
    .param p2, "precision"    # F
    .param p3, "propertyXName"    # Ljava/lang/String;
    .param p4, "propertyYName"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 435
    move-object/from16 v3, p4

    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 436
    .local v4, "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v6, 0x0

    .line 439
    .local v6, "totalLength":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v7, "contourLengths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_1c
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    .line 443
    .local v8, "pathLength":F
    add-float/2addr v6, v8

    .line 444
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .end local v8    # "pathLength":F
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 449
    new-instance v8, Landroid/graphics/PathMeasure;

    invoke-direct {v8, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 451
    .local v8, "pathMeasure":Landroid/graphics/PathMeasure;
    const/16 v9, 0x64

    div-float v10, v6, p2

    float-to-int v10, v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 453
    .local v9, "numPoints":I
    new-array v10, v9, [F

    .line 454
    .local v10, "mX":[F
    new-array v12, v9, [F

    .line 455
    .local v12, "mY":[F
    const/4 v13, 0x2

    new-array v14, v13, [F

    .line 457
    .local v14, "position":[F
    const/4 v15, 0x0

    .line 458
    .local v15, "contourIndex":I
    add-int/lit8 v13, v9, -0x1

    int-to-float v13, v13

    div-float v13, v6, v13

    .line 459
    .local v13, "step":F
    const/16 v16, 0x0

    .line 464
    .local v16, "currentDistance":F
    move/from16 v11, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    .line 464
    .local v11, "currentDistance":F
    .local v15, "i":I
    .local v16, "contourIndex":I
    :goto_52
    move/from16 v17, v15

    .line 464
    .end local v15    # "i":I
    .local v17, "i":I
    move/from16 v5, v17

    if-ge v5, v9, :cond_9e

    .line 465
    .end local v17    # "i":I
    .local v5, "i":I
    const/4 v0, 0x0

    invoke-virtual {v8, v11, v14, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 466
    invoke-virtual {v8, v11, v14, v0}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 468
    const/4 v0, 0x0

    aget v15, v14, v0

    aput v15, v10, v5

    .line 469
    const/4 v0, 0x1

    aget v15, v14, v0

    aput v15, v12, v5

    .line 470
    add-float/2addr v11, v13

    .line 471
    add-int/lit8 v0, v16, 0x1

    move-object/from16 v18, v4

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 471
    .end local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .local v18, "measureForTotalLength":Landroid/graphics/PathMeasure;
    if-ge v0, v4, :cond_96

    add-int/lit8 v0, v16, 0x1

    .line 472
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_96

    .line 473
    add-int/lit8 v0, v16, 0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v11, v0

    .line 474
    add-int/lit8 v16, v16, 0x1

    .line 475
    invoke-virtual {v8}, Landroid/graphics/PathMeasure;->nextContour()Z

    .line 464
    :cond_96
    add-int/lit8 v15, v5, 0x1

    .line 464
    .end local v5    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v4, v18

    move-object/from16 v0, p0

    const/4 v5, 0x0

    goto :goto_52

    .line 480
    .end local v15    # "i":I
    .end local v18    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .restart local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    :cond_9e
    move-object/from16 v18, v4

    .line 480
    .end local v4    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    .restart local v18    # "measureForTotalLength":Landroid/graphics/PathMeasure;
    const/4 v0, 0x0

    .line 481
    .local v0, "x":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x0

    .line 482
    .local v4, "y":Landroid/animation/PropertyValuesHolder;
    if-eqz v2, :cond_a8

    .line 483
    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 485
    :cond_a8
    if-eqz v3, :cond_ae

    .line 486
    invoke-static {v3, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 488
    :cond_ae
    if-nez v0, :cond_ba

    .line 489
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    const/4 v15, 0x0

    aput-object v4, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_d1

    .line 490
    :cond_ba
    const/4 v5, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_c6

    .line 491
    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    goto :goto_d1

    .line 493
    :cond_c6
    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v5, v15

    const/4 v15, 0x1

    aput-object v4, v5, v15

    invoke-virtual {v1, v5}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 495
    :goto_d1
    return-void
.end method
