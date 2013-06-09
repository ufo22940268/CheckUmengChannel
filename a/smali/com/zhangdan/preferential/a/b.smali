.class public final Lcom/zhangdan/preferential/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zhangdan/preferential/a/b;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zhangdan/preferential/a/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/zhangdan/preferential/a/b;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "++++++++++++++++++++"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++++++++++++++++++++"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    aget-object v0, p1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zhangdan/preferential/a/b;->a:Landroid/content/Context;

    const v1, 0x7f0801aa

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/zhangdan/preferential/a/b;->a:Landroid/content/Context;

    const v2, 0x7f030052

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/zhangdan/preferential/a/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/zhangdan/preferential/a/c;

    invoke-direct {v2, p0, p1}, Lcom/zhangdan/preferential/a/c;-><init>(Lcom/zhangdan/preferential/a/b;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
