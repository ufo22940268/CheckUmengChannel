.class final Lcom/igexin/a/a/c/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    iput v0, p0, Lcom/igexin/a/a/c/a;->d:I

    invoke-static {p1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/Object;)V

    const-string v0, "\r\n?"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/igexin/a/a/c/a;->b:I

    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    iget-object v2, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    return-object v0
.end method


# virtual methods
.method final a()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    return v0
.end method

.method final a(C)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/igexin/a/a/c/a;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/igexin/a/a/c/a;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final varargs a([C)Ljava/lang/String;
    .locals 5

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    array-length v3, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-char v4, p1, v0

    if-eq v4, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_2
.end method

.method final b()Z
    .locals 2

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    iget v1, p0, Lcom/igexin/a/a/c/a;->b:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(C)Z
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final varargs b([C)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    array-length v3, p1

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-char v4, p1, v1

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method final c()C
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method final c(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    return v1

    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method final d()C
    .locals 2

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xffff

    :goto_0
    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method final d(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v3, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()V
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    return-void
.end method

.method final f()V
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    return-void
.end method

.method final g()V
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    iput v0, p0, Lcom/igexin/a/a/c/a;->d:I

    return-void
.end method

.method final h()V
    .locals 1

    iget v0, p0, Lcom/igexin/a/a/c/a;->d:I

    iput v0, p0, Lcom/igexin/a/a/c/a;->c:I

    return-void
.end method

.method final i()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_2

    :cond_1
    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-gt v1, v2, :cond_3

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x46

    if-le v1, v2, :cond_2

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3

    const/16 v2, 0x66

    if-gt v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/igexin/a/a/c/a;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/a/a/c/a;->c:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final m()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    const/16 v2, 0x5a

    if-le v1, v2, :cond_3

    :cond_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final n()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igexin/a/a/c/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v2, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/a/c/a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/igexin/a/a/c/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
