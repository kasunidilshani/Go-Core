<template>
    <div>
	<section class="" v-if="!hasSeenCongrats">
		<transition name="slide-fade">
			<section v-show="step === 1">
				<form class="form  p-4" method="post" action="#" @submit.prevent="next">

					<div class="form group">
						<h2 class="">Details of the Owner</h2>

						<input class="inputstyle " type="text" v-model="owner.Name" autocomplete='customer.firstName' placeholder="First name" required /><br><br>				
						<input class="inputstyle" type="tel" v-model="owner.phoneNumber" autocomplete="customer.phoneNumber" placeholder="Phone number" minlength="9" maxlength="10"  required /><br><br>					
						<input class="inputstyle" type="tel" v-model="owner.address" autocomplete="customer.address" placeholder="Address" required /><br><br>					
						<input class="inputstyle" type="text" v-model="owner.city" autocomplete='customer.city' placeholder="City" required /><br><br>					
						<input class="inputstyle" type="text" v-model="owner.eMail" autocomplete="customer.eMail" placeholder="Email" required /><br><br>					
						<input class="inputstyle" type="text" v-model="owner.nic" autocomplete="customer.nic" placeholder="NIC" minlength="12" maxlength="12" required /><br><br>
					</div>
					<div>
						<button class="btn btn-primary newbtn" type="submit" value="Next">Next</button>
					</div>
				</form>
			</section>
		</transition>
		<transition name="slide-fade">
			<section v-show="step === 2">

				<div class="form-group">
				<h2 class="">Details of the Vehicle</h2>
				<form class="form p-4" method="post" action="#" @submit.prevent="next">
					
						<input class="inputstyle" type="text" v-model="vehicle.type"  placeholder="Vehicle Type" required /><br><br>
						<input class="inputstyle" type="text" v-model="vehicle.regno"  placeholder="Registered Number" required /><br><br>
						<input class="inputstyle" type="text" v-model="vehicle.regYear"  placeholder="Registered Year" required /><br><br>
						<input class="inputstyle" type="text" v-model="vehicle.chassis"  placeholder="Chassis No" required /><br><br>
						<input class="inputstyle" type="text" v-model="vehicle.insuarance"  placeholder="Insurance Type" required /><br><br>
						<input class="inputstyle" type="text" v-model="vehicle.document"  placeholder="Upload Document" required /><br><br>
						<div class="fom-group">
							<button type="" class="btn btn-lg newbtn btn-primary" @click.prevent="prev()">Previous</button>
							<button type="submit" class="btn btn-lg newbtn btn-primary">Next</button>
						</div>
				</form>
				</div>
			</section>
		</transition>
		<transition name="slide-fade">
			<section v-show="step === 3">
				<h2 class="">Details of the Driver</h2>
				<form class="form" action="#" @submit.prevent="customerRegister">
					
						<input class="inputstyle" type="text" v-model="driver.Name"  placeholder="Name" required /><br><br>
						<input class="inputstyle" type="date" v-model="driver.birthdate" placeholder="Birthday ('day'/'month'/'year')" required /><br><br>				
						<input class="inputstyle" type="tel" v-model="driver.phoneNumber"  placeholder="Contact Number" required /><br><br>					
						<input class="inputstyle" type="text" v-model="driver.address" placeholder="Address" required /><br><br>
						<input class="inputstyle" type="email" v-model="driver.eMail"  placeholder="Email" required /><br><br>
						<input class="inputstyle" type="text" v-model="driver.nic" placeholder="NIC" required /><br><br>
						<input class="inputstyle" type="texr" v-model="driver.license" placeholder="License Number" required /><br><br>
						<input class="inputstyle" type="text" v-model="driver.document"  placeholder="Upload the document" required /><br><br>

					<div class="fom-group">
							<button type="" class="btn btn-lg newbtn btn-primary" @click.prevent="prev()">Previous</button>
							<button type="submit" class="btn btn-lg newbtn btn-primary">Sign Up</button>
						</div>
				</form>
			</section>
		</transition>
	</section>
</div>
</template>

<script>

export default ({
    data: () => {
    return {
      steps: {},
      step: 1,
      owner: {
        Name: "",
        phoneNumber: "",
        address: "",
        city: "",
        eMail: "",
		nic: ""
      },vehicle: {type: "",
        regno: "",
        regYear: "",
        chassis: "",
        insuarance: "",
        document: "",
      },driver: {Name: "",
        phoneNumber: "",
        address: "",
        eMail: "",
		nic: "",
		birthdate: "",
		license: "",
		document:""
      },
    };
  },
  methods: {
    prev() {
      this.step--;
    },

    next() {
      this.step++;
    },

    customerRegister: function () {
      this.hasSeenCongrats = true;
    }
  }
})
</script>

<style scoped>
.inputstyle{
  border-width: 2px;
  border-color: gray;
  border-style: solid;
  border-radius: 10px;
  word-spacing: 5px;
  padding-left: 50px;
  padding-right: 50px;
  padding-top: 10px;
  padding-bottom: 10px;
}

.newbtn{
  background-color: #0084BD;
  border-color: #0084BD;
  border-style: solid;
  border-radius: 20px;
  padding-left: 30px;
  padding-right: 30px;
}

.newbtn:hover{
  background-color:hsl(198, 72%, 46%);
  border-color:hsl(198, 72%, 46%);
}
  

</style>
