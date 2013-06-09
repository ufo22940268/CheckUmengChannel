.class final Lcom/igexin/a/a/d/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/igexin/a/a/c/p;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ","

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, " "

    aput-object v2, v0, v1

    sput-object v0, Lcom/igexin/a/a/d/f;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    iput-object p1, p0, Lcom/igexin/a/a/d/f;->c:Ljava/lang/String;

    new-instance v0, Lcom/igexin/a/a/c/p;

    invoke-direct {v0, p1}, Lcom/igexin/a/a/c/p;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/igexin/a/a/d/v;
    .locals 4

    new-instance v1, Lcom/igexin/a/a/d/f;

    invoke-direct {v1, p0}, Lcom/igexin/a/a/d/f;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->d()Z

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    sget-object v2, Lcom/igexin/a/a/d/f;->a:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/p;

    invoke-direct {v2}, Lcom/igexin/a/a/d/p;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->c()C

    move-result v0

    invoke-direct {v1, v0}, Lcom/igexin/a/a/d/f;->a(C)V

    :goto_0
    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->d()Z

    move-result v0

    iget-object v2, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    sget-object v3, Lcom/igexin/a/a/d/f;->a:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/igexin/a/a/c/p;->a([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->c()C

    move-result v0

    invoke-direct {v1, v0}, Lcom/igexin/a/a/d/f;->a(C)V

    goto :goto_0

    :cond_0
    invoke-direct {v1}, Lcom/igexin/a/a/d/f;->a()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Lcom/igexin/a/a/d/f;->a(C)V

    goto :goto_0

    :cond_2
    invoke-direct {v1}, Lcom/igexin/a/a/d/f;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, v1, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, v1, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/v;

    :goto_1
    return-object v0

    :cond_4
    new-instance v0, Lcom/igexin/a/a/d/s;

    iget-object v1, v1, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/igexin/a/a/d/s;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private a()V
    .locals 7

    const/16 v3, 0x29

    const/16 v2, 0x28

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/aj;

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/aj;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/ag;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/ag;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "|"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/c;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/igexin/a/a/c/p;

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const/16 v2, 0x5b

    const/16 v3, 0x5d

    invoke-virtual {v1, v2, v3}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/igexin/a/a/c/p;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v6

    const-string v2, "!="

    aput-object v2, v1, v5

    const-string v2, "^="

    aput-object v2, v1, v4

    const/4 v2, 0x3

    const-string v3, "$="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "*="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "~="

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->d()Z

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "^"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/z;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/igexin/a/a/d/z;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/x;

    invoke-direct {v2, v1}, Lcom/igexin/a/a/d/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const-string v2, "="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/aa;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const-string v2, "!="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/ae;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/ae;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const-string v2, "^="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/af;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/af;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const-string v2, "$="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/ac;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/ac;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const-string v2, "*="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/ab;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/ab;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const-string v2, "~="

    invoke-virtual {v0, v2}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v3, Lcom/igexin/a/a/d/ad;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lcom/igexin/a/a/d/ad;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    new-instance v1, Lcom/igexin/a/a/d/h;

    const-string v2, "Could not parse attribute query \'%s\': unexpected token at \'%s\'"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/igexin/a/a/d/f;->c:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/igexin/a/a/d/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_c
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v1, Lcom/igexin/a/a/d/w;

    invoke-direct {v1}, Lcom/igexin/a/a/d/w;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":lt("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v1, Lcom/igexin/a/a/d/an;

    invoke-direct {p0}, Lcom/igexin/a/a/d/f;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/igexin/a/a/d/an;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":gt("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v1, Lcom/igexin/a/a/d/am;

    invoke-direct {p0}, Lcom/igexin/a/a/d/f;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/igexin/a/a/d/am;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":eq("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v1, Lcom/igexin/a/a/d/ak;

    invoke-direct {p0}, Lcom/igexin/a/a/d/f;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/igexin/a/a/d/ak;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":has("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":has"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0, v2, v3}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":has(el) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/j;

    invoke-static {v0}, Lcom/igexin/a/a/d/f;->a(Ljava/lang/String;)Lcom/igexin/a/a/d/v;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/j;-><init>(Lcom/igexin/a/a/d/v;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":contains("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, v6}, Lcom/igexin/a/a/d/f;->a(Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":containsOwn("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, v5}, Lcom/igexin/a/a/d/f;->a(Z)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":matches("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0, v6}, Lcom/igexin/a/a/d/f;->b(Z)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":matchesOwn("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, v5}, Lcom/igexin/a/a/d/f;->b(Z)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":not("

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ":not"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0, v2, v3}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":not(selector) subselect must not be empty"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/m;

    invoke-static {v0}, Lcom/igexin/a/a/d/f;->a(Ljava/lang/String;)Lcom/igexin/a/a/d/v;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/m;-><init>(Lcom/igexin/a/a/d/v;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_16
    new-instance v0, Lcom/igexin/a/a/d/h;

    const-string v1, "Could not parse query \'%s\': unexpected token at \'%s\'"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/igexin/a/a/d/f;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v3}, Lcom/igexin/a/a/c/p;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/a/d/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private a(C)V
    .locals 10

    const/16 v8, 0x2c

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v0}, Lcom/igexin/a/a/c/p;->d()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v1}, Lcom/igexin/a/a/c/p;->a()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v2, "("

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const/16 v5, 0x28

    const/16 v6, 0x29

    invoke-virtual {v2, v5, v6}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v2, "["

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/c/p;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const/16 v5, 0x5b

    const/16 v6, 0x5d

    invoke-virtual {v2, v5, v6}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    sget-object v2, Lcom/igexin/a/a/d/f;->a:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/igexin/a/a/c/p;->a([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    invoke-virtual {v1}, Lcom/igexin/a/a/c/p;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/d/f;->a(Ljava/lang/String;)Lcom/igexin/a/a/d/v;

    move-result-object v6

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/v;

    instance-of v1, v0, Lcom/igexin/a/a/d/t;

    if-eqz v1, :cond_c

    if-eq p1, v8, :cond_c

    move-object v1, v0

    check-cast v1, Lcom/igexin/a/a/d/t;

    iget-object v2, v1, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    iget-object v1, v1, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/a/a/d/v;

    :goto_1
    move v2, v3

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    iget-object v5, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    const/16 v5, 0x3e

    if-ne p1, v5, :cond_5

    new-instance v5, Lcom/igexin/a/a/d/s;

    new-array v7, v7, [Lcom/igexin/a/a/d/v;

    aput-object v6, v7, v4

    new-instance v4, Lcom/igexin/a/a/d/k;

    invoke-direct {v4, v0}, Lcom/igexin/a/a/d/k;-><init>(Lcom/igexin/a/a/d/v;)V

    aput-object v4, v7, v3

    invoke-direct {v5, v7}, Lcom/igexin/a/a/d/s;-><init>([Lcom/igexin/a/a/d/v;)V

    move-object v3, v5

    :goto_3
    if-eqz v2, :cond_b

    move-object v0, v1

    check-cast v0, Lcom/igexin/a/a/d/t;

    iget-object v2, v0, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/igexin/a/a/d/r;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v0, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/igexin/a/a/d/s;

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/igexin/a/a/d/s;-><init>(Ljava/util/Collection;)V

    move v2, v4

    move-object v1, v0

    goto :goto_2

    :cond_5
    const/16 v5, 0x20

    if-ne p1, v5, :cond_6

    new-instance v5, Lcom/igexin/a/a/d/s;

    new-array v7, v7, [Lcom/igexin/a/a/d/v;

    aput-object v6, v7, v4

    new-instance v4, Lcom/igexin/a/a/d/n;

    invoke-direct {v4, v0}, Lcom/igexin/a/a/d/n;-><init>(Lcom/igexin/a/a/d/v;)V

    aput-object v4, v7, v3

    invoke-direct {v5, v7}, Lcom/igexin/a/a/d/s;-><init>([Lcom/igexin/a/a/d/v;)V

    move-object v3, v5

    goto :goto_3

    :cond_6
    const/16 v5, 0x2b

    if-ne p1, v5, :cond_7

    new-instance v5, Lcom/igexin/a/a/d/s;

    new-array v7, v7, [Lcom/igexin/a/a/d/v;

    aput-object v6, v7, v4

    new-instance v4, Lcom/igexin/a/a/d/l;

    invoke-direct {v4, v0}, Lcom/igexin/a/a/d/l;-><init>(Lcom/igexin/a/a/d/v;)V

    aput-object v4, v7, v3

    invoke-direct {v5, v7}, Lcom/igexin/a/a/d/s;-><init>([Lcom/igexin/a/a/d/v;)V

    move-object v3, v5

    goto :goto_3

    :cond_7
    const/16 v5, 0x7e

    if-ne p1, v5, :cond_8

    new-instance v5, Lcom/igexin/a/a/d/s;

    new-array v7, v7, [Lcom/igexin/a/a/d/v;

    aput-object v6, v7, v4

    new-instance v4, Lcom/igexin/a/a/d/o;

    invoke-direct {v4, v0}, Lcom/igexin/a/a/d/o;-><init>(Lcom/igexin/a/a/d/v;)V

    aput-object v4, v7, v3

    invoke-direct {v5, v7}, Lcom/igexin/a/a/d/s;-><init>([Lcom/igexin/a/a/d/v;)V

    move-object v3, v5

    goto :goto_3

    :cond_8
    if-ne p1, v8, :cond_a

    instance-of v3, v0, Lcom/igexin/a/a/d/t;

    if-eqz v3, :cond_9

    check-cast v0, Lcom/igexin/a/a/d/t;

    invoke-virtual {v0, v6}, Lcom/igexin/a/a/d/t;->a(Lcom/igexin/a/a/d/v;)V

    :goto_5
    move-object v3, v0

    goto :goto_3

    :cond_9
    new-instance v3, Lcom/igexin/a/a/d/t;

    invoke-direct {v3}, Lcom/igexin/a/a/d/t;-><init>()V

    invoke-virtual {v3, v0}, Lcom/igexin/a/a/d/t;->a(Lcom/igexin/a/a/d/v;)V

    invoke-virtual {v3, v6}, Lcom/igexin/a/a/d/t;->a(Lcom/igexin/a/a/d/v;)V

    move-object v0, v3

    goto :goto_5

    :cond_a
    new-instance v0, Lcom/igexin/a/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown combinator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/a/d/h;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_b
    move-object v1, v3

    goto/16 :goto_4

    :cond_c
    move v2, v4

    move-object v1, v0

    goto/16 :goto_2
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0x5c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    if-eqz p1, :cond_1

    const-string v0, ":containsOwn"

    :goto_0
    invoke-virtual {v2, v0}, Lcom/igexin/a/a/c/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const/16 v2, 0x28

    const/16 v3, 0x29

    invoke-virtual {v0, v2, v3}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-char v2, v4, v0

    if-ne v2, v6, :cond_2

    if-eqz v1, :cond_0

    if-ne v1, v6, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_1
    const-string v0, ":contains"

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":contains(text) query must not be empty"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/ah;

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/ah;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/ai;

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/ai;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private b()I
    .locals 3

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/igexin/a/a/c/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/a/a/h;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Index must be numeric"

    invoke-static {v1, v2}, Lcom/igexin/a/a/a/i;->a(ZLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private b(Z)V
    .locals 3

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    if-eqz p1, :cond_0

    const-string v0, ":matchesOwn"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/igexin/a/a/c/p;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/d/f;->b:Lcom/igexin/a/a/c/p;

    const/16 v1, 0x28

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/a/c/p;->a(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":matches(regex) query must not be empty"

    invoke-static {v0, v1}, Lcom/igexin/a/a/a/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/b;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/b;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    const-string v0, ":matches"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/igexin/a/a/d/f;->d:Ljava/util/List;

    new-instance v2, Lcom/igexin/a/a/d/ao;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/igexin/a/a/d/ao;-><init>(Ljava/util/regex/Pattern;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
