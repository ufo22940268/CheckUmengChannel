.class final Lsdk/download/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Set;

.field private c:I

.field private d:I

.field private final e:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lsdk/download/m;->c:I

    iput v3, p0, Lsdk/download/m;->d:I

    iput-object p1, p0, Lsdk/download/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lsdk/download/m;->b:Ljava/util/Set;

    iget-object v0, p0, Lsdk/download/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lsdk/download/m;->e:[C

    iget-object v0, p0, Lsdk/download/m;->a:Ljava/lang/String;

    iget-object v1, p0, Lsdk/download/m;->e:[C

    array-length v1, v1

    iget-object v2, p0, Lsdk/download/m;->e:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0}, Lsdk/download/m;->b()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lsdk/download/m;->d:I

    return v0
.end method

.method public final b()V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x27

    const/4 v2, 0x1

    const/4 v6, 0x5

    const/16 v5, 0x3d

    iget-object v3, p0, Lsdk/download/m;->e:[C

    :goto_0
    iget v0, p0, Lsdk/download/m;->c:I

    array-length v4, v3

    if-ge v0, v4, :cond_0

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x20

    if-ne v0, v4, :cond_0

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lsdk/download/m;->c:I

    array-length v4, v3

    if-ne v0, v4, :cond_2

    const/16 v0, 0x9

    iput v0, p0, Lsdk/download/m;->d:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x28

    if-ne v0, v4, :cond_3

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    iput v2, p0, Lsdk/download/m;->d:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x29

    if-ne v0, v4, :cond_4

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lsdk/download/m;->d:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3f

    if-ne v0, v4, :cond_5

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    const/4 v0, 0x6

    iput v0, p0, Lsdk/download/m;->d:I

    goto :goto_1

    :cond_5
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_6

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    iput v6, p0, Lsdk/download/m;->d:I

    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_1

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3e

    if-ne v0, v4, :cond_7

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    iput v6, p0, Lsdk/download/m;->d:I

    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_1

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto :goto_1

    :cond_7
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_9

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    iput v6, p0, Lsdk/download/m;->d:I

    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-eq v0, v5, :cond_8

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_1

    :cond_8
    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x21

    if-ne v0, v4, :cond_b

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    iput v6, p0, Lsdk/download/m;->d:I

    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_a

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_a

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected character after !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v4, 0x5f

    if-eq v0, v4, :cond_d

    const/16 v4, 0x41

    if-lt v0, v4, :cond_c

    const/16 v4, 0x5a

    if-le v0, v4, :cond_d

    :cond_c
    const/16 v4, 0x61

    if-lt v0, v4, :cond_11

    const/16 v4, 0x7a

    if-gt v0, v4, :cond_11

    :cond_d
    move v0, v2

    :goto_2
    if-eqz v0, :cond_19

    iget v4, p0, Lsdk/download/m;->c:I

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    :goto_3
    iget v0, p0, Lsdk/download/m;->c:I

    array-length v5, v3

    if-ge v0, v5, :cond_13

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    const/16 v5, 0x5f

    if-eq v0, v5, :cond_10

    const/16 v5, 0x41

    if-lt v0, v5, :cond_e

    const/16 v5, 0x5a

    if-le v0, v5, :cond_10

    :cond_e
    const/16 v5, 0x61

    if-lt v0, v5, :cond_f

    const/16 v5, 0x7a

    if-le v0, v5, :cond_10

    :cond_f
    const/16 v5, 0x30

    if-lt v0, v5, :cond_12

    const/16 v5, 0x39

    if-gt v0, v5, :cond_12

    :cond_10
    move v0, v2

    :goto_4
    if-eqz v0, :cond_13

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto :goto_3

    :cond_11
    move v0, v1

    goto :goto_2

    :cond_12
    move v0, v1

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lsdk/download/m;->a:Ljava/lang/String;

    iget v1, p0, Lsdk/download/m;->c:I

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lsdk/download/m;->c:I

    sub-int/2addr v1, v4

    const/4 v2, 0x4

    if-gt v1, v2, :cond_17

    const-string v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x7

    iput v0, p0, Lsdk/download/m;->d:I

    goto/16 :goto_1

    :cond_14
    const-string v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    const/4 v0, 0x3

    iput v0, p0, Lsdk/download/m;->d:I

    goto/16 :goto_1

    :cond_16
    const-string v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/16 v0, 0x8

    iput v0, p0, Lsdk/download/m;->d:I

    goto/16 :goto_1

    :cond_17
    iget-object v1, p0, Lsdk/download/m;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    iput v0, p0, Lsdk/download/m;->d:I

    goto/16 :goto_1

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized column or keyword"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1d

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    :goto_5
    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lsdk/download/m;->c:I

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1a

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, v3

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_1b

    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    :cond_1a
    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    goto :goto_5

    :cond_1b
    iget v0, p0, Lsdk/download/m;->c:I

    array-length v1, v3

    if-ne v0, v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unterminated string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget v0, p0, Lsdk/download/m;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsdk/download/m;->c:I

    const/4 v0, 0x6

    iput v0, p0, Lsdk/download/m;->d:I

    goto/16 :goto_1

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
