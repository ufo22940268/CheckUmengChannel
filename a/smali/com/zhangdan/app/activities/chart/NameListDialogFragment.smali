.class public Lcom/zhangdan/app/activities/chart/NameListDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "NameListDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    }
.end annotation


# static fields
.field public static final KEY_NAMES:Ljava/lang/String; = "names"


# instance fields
.field private mNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/zhangdan/app/activities/chart/NameListDialogFragment;)Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 30
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "names"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mNameList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 35
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 37
    .local v3, size:I
    add-int/lit8 v4, v3, 0x1

    new-array v2, v4, [Ljava/lang/String;

    .line 38
    .local v2, items:[Ljava/lang/String;
    const/4 v4, 0x0

    const v5, 0x7f0701a2

    invoke-virtual {p0, v5}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 39
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 40
    add-int/lit8 v5, v1, 0x1

    iget-object v4, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v2, v5

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_0
    new-instance v4, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;

    invoke-direct {v4, p0, v2}, Lcom/zhangdan/app/activities/chart/NameListDialogFragment$1;-><init>(Lcom/zhangdan/app/activities/chart/NameListDialogFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 57
    return-void
.end method

.method public setOnCardNameSelectedListener(Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/zhangdan/app/activities/chart/NameListDialogFragment;->mOnCardNameSelectedListener:Lcom/zhangdan/app/activities/chart/NameListDialogFragment$OnCardNameSelectedListener;

    .line 61
    return-void
.end method
