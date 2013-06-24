.class public Lcom/zhangdan/preferential/utils/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/zhangdan/preferential/utils/CallManager;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/preferential/utils/CallManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/zhangdan/preferential/utils/CallManager;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public buildDialog([Ljava/lang/String;)V
    .locals 6
    .parameter "tels"

    .prologue
    const/4 v5, 0x0

    .line 26
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++++++++++++++++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "++++++++++++++++++++"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    if-eqz p1, :cond_0

    aget-object v2, p1, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/zhangdan/preferential/utils/CallManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0701b1

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 46
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/zhangdan/preferential/utils/CallManager;->mContext:Landroid/content/Context;

    const v3, 0x7f030054

    invoke-direct {v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 36
    .local v1, adapter:Landroid/widget/ArrayAdapter;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zhangdan/preferential/utils/CallManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/zhangdan/preferential/utils/CallManager$1;

    invoke-direct {v3, p0, p1}, Lcom/zhangdan/preferential/utils/CallManager$1;-><init>(Lcom/zhangdan/preferential/utils/CallManager;[Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    .local v0, ad:Landroid/app/AlertDialog;
    goto :goto_0
.end method
