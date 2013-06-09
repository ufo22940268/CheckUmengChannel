.class final Lcom/zhangdan/app/activities/bankservice/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;


# direct methods
.method constructor <init>(Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zhangdan/app/activities/bankservice/k;->a:Lcom/zhangdan/app/activities/bankservice/BankServiceSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/zhangdan/app/data/d;

    check-cast p2, Lcom/zhangdan/app/data/d;

    invoke-virtual {p1}, Lcom/zhangdan/app/data/d;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/zhangdan/app/data/d;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
