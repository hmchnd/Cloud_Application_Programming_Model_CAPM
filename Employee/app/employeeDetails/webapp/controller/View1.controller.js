sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel"
], function (Controller,JSONModel) {
	"use strict";

	return Controller.extend("Accenutre.AccentureDemo.controller.View1", {
		onInit: function () {
            var oJsonModel = new JSONModel();

            debugger;
    var oModel = new sap.ui.model.odata.ODataModel("/employeedata", true);
oModel.read("/Employees", null, {}, false, function(oData, oResponse) {
debugger;
				oJsonModel.setData(JSON.parse(oResponse.body).value);	

				}, function(error) {
					console.log("Error");
					console.log(error);
				}
);
            
this.getView().setModel(oJsonModel,"oJsonModel");



		}
	});
});
