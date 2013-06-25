.class public Lcom/zhangdan/app/sms/BillMgr$BillRegex;
.super Ljava/lang/Object;
.source "BillMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhangdan/app/sms/BillMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillRegex"
.end annotation


# instance fields
.field public amountPattern:Ljava/util/regex/Pattern;

.field public cardPattern:Ljava/util/regex/Pattern;

.field public expendPattern:Ljava/util/regex/Pattern;

.field public incomePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
